require 'rest-client'
require 'crate_joy/order.rb'
require 'crate_joy/version'

module CrateJoy

  class API

    def self.client(id, key)
      Client.new(id, key)
    end

    class Client

      BASE_URL = 'https://api.cratejoy.com/v1'

      def initialize(id, key)
        @resource = ::RestClient::Resource.new BASE_URL, id, key
      end

      def orders(date)
        resource = orders_path(date)
        response = JSON.parse resource.get
        if response['results']
          results = response['results']
          results = results.map do |result|
            Order.new(result)
          end
        else
          results = []
        end
        results
      end

      private
      def orders_path(date)
        date = format_date(date)
        @resource["/shipments/?shipped_at__ge=#{date}"]
      end

      def format_date(date)
        date.strftime('%FT%TZ')
      end

    end

  end
end