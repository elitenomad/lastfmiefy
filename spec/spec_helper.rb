require "bundler/setup"
require "lastfmiefy"

require 'webmock/rspec'
WebMock.disable_net_connect!(allow_localhost: true)

RSpec.configure do |config|
  # Enable flags like --only-failures and --next-failure
  config.example_status_persistence_file_path = ".rspec_status"

  # Disable RSpec exposing methods globally on `Module` and `main`
  config.disable_monkey_patching!

  config.expect_with :rspec do |c|
    c.syntax = :expect
  end

  config.before(:each) do
    stub_request(:get, /ws.audioscrobbler.com/).
        with(headers: {'Accept'=>'*/*', 'User-Agent'=>'rest-client/2.0.2 (darwin14.5.0 x86_64) ruby/2.2.4p230'}).
        to_return(status: 200, body: '{ "name":"John", "age":30, "city":"New York"}', headers: {})
  end
end
