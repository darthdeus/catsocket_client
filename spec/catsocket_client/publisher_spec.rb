require "spec_helper"
require "catsocket_client/publisher"

describe CatsocketClient::Publisher do

  it "can publish a message" do
    stub_request(:post, "http://google.com/").
      with(:body => {"channel"=>"channel", "data"=>"data"}).to_return(:status => 200, :body => "", :headers => {})
    client = CatsocketClient::Publisher.new("http://google.com", "bar")
    client.publish("channel", "data")
  end

end
