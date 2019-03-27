module Timekit
  class Configuration
    attr_accessor :basic_auth_key

    def initialize
      @basic_auth_key = nil
    end

    def basic_auth_key
      raise Errors::Configuration, "Timekit requires basic authentication key!" unless @basic_auth_key
      @basic_auth_key
    end
  end
end