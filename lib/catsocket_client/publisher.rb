require "rest_client"

module CatsocketClient
  class Publisher < Struct.new(:url, :api_key)

    def publish(channel, data)
      json = data.is_a?(String) ? data : data.to_json
      RestClient.post(url, guid: 0, api_key: api_key, channel: channel, data: json)
    end

  end
end
