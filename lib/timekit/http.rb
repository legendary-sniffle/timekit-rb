module Timekit
  module Http
    extend self

    # TODO: Error handling!!

    BASE_URI = "https://api.timekit.io/v2"

    def get(url)
      Curl::Easy.perform("#{BASE_URI}/#{url}") do |curl|
        curl.headers["Content-Type"] = "application/json"
        curl.userpwd = Timekit.configuration.basic_auth_key
      end
    end

    def post(url, params)
      Curl::Easy.http_post("#{BASE_URI}/#{url}", params.to_json) do |curl|
        curl.headers["Content-Type"] = "application/json"
        curl.userpwd = Timekit.configuration.basic_auth_key
      end
    end

    def put(url, params)
      Curl::Easy.http_put("#{BASE_URI}/#{url}", params.to_json) do |curl|
        curl.headers["Content-Type"] = "application/json"
        curl.userpwd = Timekit.configuration.basic_auth_key
      end
    end

    def delete(url)
      Curl::Easy.http_delete("#{BASE_URI}/#{url}") do |curl|
        curl.headers["Content-Type"] = "application/json"
        curl.userpwd = Timekit.configuration.basic_auth_key
      end
    end
  end
end
