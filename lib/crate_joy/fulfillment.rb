require 'crate_joy/instance'
require 'crate_joy/order'

class Fulfillment
  attr_accessor :adjusted_fulfillment_date
  attr_accessor :cycle_number
  attr_accessor :fulfillment_date
  attr_accessor :id
  attr_accessor :instance
  attr_accessor :is_test
  attr_accessor :order
  attr_accessor :shipment_id
  attr_accessor :shipping
  attr_accessor :status
  attr_accessor :subscription_id
  attr_accessor :tax
  attr_accessor :test
  attr_accessor :total_cycles
  attr_accessor :type

  def initialize(json={})
    @adjusted_fulfillment_date = json['adjusted_fulfillment_date']
    @cycle_number = json['cycle_number']
    @fulfillment_date = json['fulfillment_date']
    @id = json['id']
    @is_test = json['is_test']
    @shipment_id = json['shipment_id']
    @shipping = json['shipping']
    @status = json['status']
    @subscription_id = json['subscription_id']
    @tax = json['tax']
    @test = json['test']
    @total_cycles = json['total_cycles']
    @type = json['type']

    @instance = Instance.new(json['instance'])
    @order = Order.new(json['order'])
  end

end