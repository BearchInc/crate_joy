require 'crate_joy/box.rb'

class Order
  attr_accessor :adjusted_ordered_at
  attr_accessor :created_at
  attr_accessor :customer
  attr_accessor :customer_id
  attr_accessor :fulfillments
  attr_accessor :id
  attr_accessor :is_gift
  attr_accessor :is_test
  attr_accessor :labels
  attr_accessor :ship_address
  attr_accessor :shipped_at
  attr_accessor :status
  attr_accessor :target_at
  attr_accessor :tracking_number
  attr_accessor :type
  attr_accessor :url

  def initialize(json={})
    @id = json['id']
    @adjusted_ordered_at = json['adjusted_ordered_at']
    @created_at = json['created_at']
    @is_test = json['is_test']
    @shipped_at = json['shipped_at']
    @status = json['status']
    @target_at = json['target_at']
    @tracking_number = json['tracking_number']
    @type = json['type']
    @url = json['url']
    @is_gift = json['is_gift']

    @customer = json['customer']
    @fulfillments = json['fulfillments']
    @labels = json['labels']
    @customer_id = json['customer_id']
    @ship_address = json['ship_address']
  end

  def self.boxes
    [
        Box.new('Month 3', 1),
        Box.new('Month 4', 2),
        Box.new('Month 5', 3),
        Box.new('Month 6', 4),
        Box.new('Month 7', 5),
        Box.new('Month 8', 6),
        Box.new('Month 9', 7),
        Box.new('Postpartum 1', 8),
        Box.new('Postpartum 2', 9),
        Box.new('Postpartum 3', 10)
    ]
  end

  def self.name
    @customer['name']
  end
end