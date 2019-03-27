require_relative "./timekit/configuration"
require_relative "./timekit/version"
require_relative "./timekit/errors"

# Base requirements
require "curb"
require_relative "./timekit/http"

# Library code
require_relative "./timekit/resource"

module Timekit
  class << self
    attr_accessor :configuration
  end

  def self.configuration
    @configuration ||= Configuration.new
  end

  def self.reset
    @configuration = Configuration.new
  end

  def self.configure
    yield(configuration)
  end
end
