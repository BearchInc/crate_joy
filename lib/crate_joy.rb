require 'rest-client'
require 'crate_joy/order.rb'
require 'crate_joy/version'

module CrateJoy
  def self.orders
    API.orders
  end

  class API
    def self.orders
      resource = ::RestClient::Resource.new "https://api.cratejoy.com/v1/shipments/?shipped_at__ge=#{Time.zone.today.beginning_of_day.strftime("%FT%TZ")}", ENV["ACCOUNT"], ENV["PASSWORD"]
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
