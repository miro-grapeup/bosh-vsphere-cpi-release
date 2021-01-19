$pipeline.pool('7.0-nsxt30') do |pool|
  pool.params = {
    RSPEC_FLAGS: [
      '--tag ~cvds',
      '--tag ~nsxv',
      '--tag ~host_maintenance',
    ].join(' '),
    NSXT_SKIP_SSL_VERIFY: "true",
  }
end
