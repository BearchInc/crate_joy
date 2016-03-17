require 'crate_joy/customer'
require 'crate_joy/subscription'

class Order
  attr_accessor :card_refunded_amount
  attr_accessor :credit_applied
  attr_accessor :customer
  attr_accessor :customer_id
  attr_accessor :financial_status
  attr_accessor :fulfillment_status
  attr_accessor :gift_card_discount
  attr_accessor :gift_message
  attr_accessor :gift_renewal_notif
  attr_accessor :id
  attr_accessor :is_renewal
  attr_accessor :is_test
  attr_accessor :note
  attr_accessor :placed_at
  attr_accessor :prorated_charge
  attr_accessor :received_gift
  attr_accessor :refund_applied
  attr_accessor :refunded_amount
  attr_accessor :sent_gift
  attr_accessor :status
  attr_accessor :store_id
  attr_accessor :subscriptions
  attr_accessor :total
  attr_accessor :total_app_fees
  attr_accessor :total_label_cost
  attr_accessor :total_pending_fees
  attr_accessor :total_price
  attr_accessor :total_shipping
  attr_accessor :total_tax
  attr_accessor :transaction_fee
  attr_accessor :transaction_fee_status
  attr_accessor :type

  def initialize(json={})
    @card_refunded_amount = json['card_refunded_amount']
    @credit_applied = json['credit_applied']
    @customer_id = json['customer_id']
    @financial_status = json['financial_status']
    @fulfillment_status = json['fulfillment_status']
    @gift_card_discount = json['gift_card_discount']
    @gift_message = json['gift_message']
    @gift_renewal_notif = json['gift_renewal_notif']
    @id = json['id']
    @is_renewal = json['is_renewal']
    @is_test = json['is_test']
    @note = json['note']
    @placed_at = json['placed_at']
    @prorated_charge = json['prorated_charge']
    @received_gift = json['received_gift']
    @refund_applied = json['refund_applied']
    @refunded_amount = json['refunded_amount']
    @sent_gift = json['sent_gift']
    @status = json['status']
    @store_id = json['store_id']
    @total = json['total']
    @total_app_fees = json['total_app_fees']
    @total_label_cost = json['total_label_cost']
    @total_pending_fees = json['total_pending_fees']
    @total_price = json['total_price']
    @total_shipping = json['total_shipping']
    @total_tax = json['total_tax']
    @transaction_fee = json['transaction_fee']
    @transaction_fee_status = json['transaction_fee_status']
    @type = json['type']

    @customer = Customer.new(json['customer'])
    @subscriptions = json['subscriptions'].map {|subscription| Subscription.new(subscription)}
  end

end