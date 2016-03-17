require 'crate_joy/customer'
require 'crate_joy/term'
require 'crate_joy/billing'

class Subscription
  attr_accessor :autorenew
  attr_accessor :billing
  attr_accessor :credit
  attr_accessor :customer
  attr_accessor :end_date
  attr_accessor :id
  attr_accessor :is_test
  attr_accessor :note
  attr_accessor :product_billing_id
  attr_accessor :skipped_date
  attr_accessor :start_date
  attr_accessor :status
  attr_accessor :store_id
  attr_accessor :term
  attr_accessor :type

  def initialize(json={})
    @autorenew = json['autorenew']
    @credit = json['credit']
    @end_date = json['end_date']
    @id = json['id']
    @is_test = json['is_test']
    @note = json['note']
    @product_billing_id = json['product_billing_id']
    @skipped_date = json['skipped_date']
    @start_date = json['start_date']
    @status = json['status']
    @store_id = json['store_id']
    @type = json['type']

    @customer = Customer.new(json['customer'])
    @billing = Billing.new(json['billing'])
    @term = Term.new(json['term'])
  end

end