require "rest_client"

module CatsocketClient
  class Publisher < Struct.new(:url, :api_key)

    def publish(channel, data)
      RestClient.post(url, channel: channel, data: data )
    end

  end
end
