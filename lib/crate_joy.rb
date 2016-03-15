require 'rest-client'
require 'crate_joy/order.rb'
require 'crate_joy/version'

module CrateJoy

  class API

    def self.client(id, key)
      Client.new(id, key)
    end

    class Client
      def initialize(id, key)
        @id = id
        @key = key
        @resource = ::RestClient::Resource.new "https://api.cratejoy.com/v1", id, key
      end

      def orders date
        resource = @resource["/shipments/?shipped_at__ge=#{date}"]
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
end
