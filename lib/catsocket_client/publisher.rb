require "rest_client"

module CatsocketClient
  class Publisher < Struct.new(:url, :api_key)

    def publish(channel, data)
      RestClient.post(url, guid: 0, api_key: api_key, channel: channel, data: data.to_json)
    end

  end
end
