require 'integration/spec_helper'
require 'securerandom'
require 'tempfile'
require 'yaml'

describe 'set_vm_metadata' do
  context 'when called with duplicate keys with multiple threads' do
    before do
      @nsxt_host = fetch_property('BOSH_VSPHERE_CPI_NSXT_HOST')
      @nsxt_username = fetch_property('BOSH_VSPHERE_CPI_NSXT_USERNAME')
      @nsxt_password = fetch_property('BOSH_VSPHERE_CPI_NSXT_PASSWORD')
    end

    let(:cpi) do
      VSphereCloud::Cloud.new(cpi_options(nsxt: {
          host: @nsxt_host,
          username: @nsxt_username,
          password: @nsxt_password
        })
      )
    end

    let(:metadata) { { "bosh-#{SecureRandom.uuid}-key" => "test value", "id" => "Hello" } }
    let(:network_spec) do
      {
        'static' => {
          'ip' => "169.254.1.#{rand(4..254)}",
          'netmask' => '255.255.254.0',
          'cloud_properties' => { 'name' => 'vcpi-seg-1' },
          'default' => ['dns', 'gateway'],
          'dns' => ['169.254.1.2'],
          'gateway' => '169.254.1.3'
        }
      }
    end
    let(:vm_type) do
      {
        'ram' => 512,
        'disk' => 2048,
        'cpu' => 1,
      }
    end

    after do
      cpi.delete_vm(@vm_cid) if @vm_cid
      cpi.client.remove_custom_field_def(metadata.keys.first, VimSdk::Vim::VirtualMachine)
    end

    it 'succeeds' do
      @vm_cid = cpi.create_vm(
        'agent-007',
        @stemcell_id,
        vm_type,
        network_spec,
        [],
        {'key' => 'value'}
      )
      threads = []
      cpis = []
      pool_size = 5
      pool_size.times do
        cpis << VSphereCloud::Cloud.new(cpi_options(nsxt: {
            host: @nsxt_host,
            username: @nsxt_username,
            password: @nsxt_password
        }))
      end

      pool_size.times do |i|
        threads << Thread.new do
          cpis[i].set_vm_metadata(@vm_cid, metadata)
        end
      end

      expect {
        threads.map(&:join)
      }.to_not raise_error
    end
  end
end
