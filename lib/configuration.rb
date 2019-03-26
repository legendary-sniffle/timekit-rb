module Timekit
  class Configuration
    attr_accessor :access_key, :secret_key, :personal_key

    def initialize
      @access_key = nil
      @secret_key = nil
      @personal_key = nil
    end

    def access_key
      raise Errors::Configuration, "Timekit access key missing!" unless @access_key
      @access_key
    end

    def secret_key
      raise Errors::Configuration, "Timekit secret key missing!" unless @secret_key
      @secret_key
    end

    def personal_key
      raise Errors::Configuration, "Timekit personal key missing!" unless @personal_key
      @personal_key
    end
  end
end