require_relative "../lib/timekit"
require "minitest/autorun"
require "minitest/focus"

VCR.configure do |config|
  config.cassette_library_dir = "test/fixtures/cassettes"
  config.hook_into :webmock
end
