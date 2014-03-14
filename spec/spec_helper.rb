Bundler.setup(:default, :development, :test)
require "pry"
require "vcr"
require "bitsy_client"

BitsyClient.site = "http://localhost:3000"

VCR.configure do |c|
  c.cassette_library_dir = 'spec/fixtures/vcr_cassettes'
  c.hook_into :webmock
  c.configure_rspec_metadata!
end
