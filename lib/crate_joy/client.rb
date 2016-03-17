require 'rest-client'
require 'crate_joy/shipment.rb'

class Client

  BASE_URL = 'https://api.cratejoy.com/v1'

  def initialize(id, key)
    @resource = ::RestClient::Resource.new BASE_URL, id, key
  end

  def shipments(date)
    resource = shipments_path(date)
    response = JSON.parse resource.get
    if response['results']
      results = response['results']
      results = results.map do |result|
        Shipment.new(result)
      end
    else
      results = []
    end
    results
  end

  private
  def shipments_path(date)
    date = format_date(date)
    @resource["/shipments/?shipped_at__ge=#{date}"]
  end

  def format_date(date)
    date.strftime('%FT%TZ')
  end

end