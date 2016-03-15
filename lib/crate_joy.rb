require 'rest-client'
require 'crate_joy/order.rb'
require 'crate_joy/version'

module CrateJoy
  def self.orders
    API.orders
  end

  class API

    def self.client(id, key)
      ::RestClient::Resource.new "https://api.cratejoy.com/v1", id, key
    end

    def self.orders
      client = CrateJoy::API.client(ENV["ACCOUNT"], ENV["PASSWORD"])
      resource = client["/shipments/?shipped_at__ge=2016-02-15T00:00:00Z"]
      response = JSON.parse resource.get
      if response["results"]
        results = response["results"]
        results = results.map do |result|
          Order.new(result)
        end
      else
        results = []
      end
      results
    end
  end
end
