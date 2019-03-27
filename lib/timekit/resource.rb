module Timekit
  class Resource
    RESOURCE_URL = "resources"

    attr_reader :id, :name, :timezone, :email

    def initialize(data)
      @data = JSON.parse(data, symbolize_names: true)
      @id = data[:id]
      @name = data[:name]
      @timezone = data[:timezone]
      @email = data[:email]
    end

    def self.fetch(uuid)
      Timekit::Http.get("#{RESOURCE_URL}/#{uuid}")
    end

    def self.create(params)
      if params[:timezone].nil? || params[:name].nil?
        raise Timekit::InvalidParamsError.new("Missing required param `timezone` and/or `name`. Params: #{params}")
      end

      data = Timekit::Http.post(RESOURCE_URL, params)
      new(data)
    end

    def self.update(uuid, params)
      data = Timekit::Http.put("#{RESOURCE_URL}/#{uuid}", params)
      new(data)
    end

    def self.remove
      data = Timekit::Http.delete("#{RESOURCE_URL}/#{uuid}")
      new(data)
    end

    def self.list
      data = Timekit::Http.get(RESOURCE_URL)
      new(data)
    end
  end
end
