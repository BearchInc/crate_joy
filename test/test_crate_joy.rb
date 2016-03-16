require 'crate_joy'
require 'test/unit'

class TestCrateJoy < Test::Unit::TestCase

  def setup
    @client = CrateJoy::API.client(ENV['ACCOUNT'], ENV['PASSWORD'])
    @orders = @client.orders(Date.new(2016, 1, 1))
  end

  def test_orders_created
    @orders.each do |order|
      assert_instance_of(Order, order)
    end
  end

  def test_orders_have_variables
    @orders.each do |order|
      assert_not_nil(order.adjusted_ordered_at)
      assert_not_nil(order.created_at)
      assert_not_nil(order.customer)
      assert_not_nil(order.customer_id)
      assert_not_nil(order.fulfillments)
      assert_not_nil(order.id)
      assert_not_nil(order.is_gift)
      assert_not_nil(order.is_test)
      assert_not_nil(order.labels)
      assert_not_nil(order.ship_address)
      assert_not_nil(order.shipped_at)
      assert_not_nil(order.status)
      assert_not_nil(order.target_at)
      assert_not_nil(order.tracking_number)
      assert_not_nil(order.type)
      assert_not_nil(order.url)
    end
  end

end