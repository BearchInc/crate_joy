require 'crate_joy'
require 'test/unit'

class TestCrateJoy < Test::Unit::TestCase

  def setup
    @client = CrateJoy::API.client(ENV['ACCOUNT'], ENV['PASSWORD'])
    @orders = @client.orders(Date.new(2016, 1, 1))
  end

  def test_main_attributes
    @orders.each do |order|
      assert_not_nil(order.name)
      assert_not_nil(order.tracking_number)
      assert_not_nil(order.customer_id)
    end
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

  def test_customers_created
    @orders.each do |order|
      assert_instance_of(Customer, order.customer)
    end
  end

  def test_customers_have_variables
    @orders.each do |order|
      assert_not_nil(order.customer.country)
      assert_not_nil(order.customer.email)
      assert_not_nil(order.customer.first_name)
      assert_not_nil(order.customer.id)
      assert_not_nil(order.customer.last_name)
      assert_not_nil(order.customer.location)
      assert_not_nil(order.customer.name)
      assert_not_nil(order.customer.type)
    end
  end

  def test_fulfillments_created
    @orders.each do |order|
      order.fulfillments.each do |fulfillment|
        assert_instance_of(Fulfillment, fulfillment)
      end
    end
  end

  def test_fulfillments_have_variables
    @orders.each do |order|
      order.fulfillments.each do |fulfillment|
        assert_not_nil(fulfillment.adjusted_fulfillment_date)
        assert_not_nil(fulfillment.cycle_number)
        assert_not_nil(fulfillment.fulfillment_date)
        assert_not_nil(fulfillment.id)
        assert_not_nil(fulfillment.instance)
        assert_not_nil(fulfillment.is_test)
        assert_not_nil(fulfillment.order)
        assert_not_nil(fulfillment.shipment_id)
        assert_not_nil(fulfillment.shipping)
        assert_not_nil(fulfillment.status)
        assert_not_nil(fulfillment.subscription_id)
        assert_not_nil(fulfillment.tax)
        assert_not_nil(fulfillment.test)
        assert_not_nil(fulfillment.total_cycles)
        assert_not_nil(fulfillment.type)
      end
    end
  end

end