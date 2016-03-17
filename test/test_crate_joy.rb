require 'crate_joy'
require 'test/unit'

class TestCrateJoy < Test::Unit::TestCase

  def setup
    @client = CrateJoy::API.client(ENV['ACCOUNT'], ENV['PASSWORD'])
    @shipments = @client.shipments(Date.new(2016, 1, 1))
  end

  def test_main_attributes
    @shipments.each do |shipment|
      assert_not_nil(shipment.name)
      assert_not_nil(shipment.tracking_number)
      assert_not_nil(shipment.customer_id)
    end
  end

  def test_shipments_created
    @shipments.each do |shipment|
      assert_instance_of(Shipment, shipment)
    end
  end

  def test_shipments_have_variables
    @shipments.each do |shipment|
      assert_not_nil(shipment.adjusted_ordered_at)
      assert_not_nil(shipment.created_at)
      assert_not_nil(shipment.customer)
      assert_not_nil(shipment.customer_id)
      assert_not_nil(shipment.fulfillments)
      assert_not_nil(shipment.id)
      assert_not_nil(shipment.is_gift)
      assert_not_nil(shipment.is_test)
      assert_not_nil(shipment.labels)
      assert_not_nil(shipment.ship_address)
      assert_not_nil(shipment.shipped_at)
      assert_not_nil(shipment.status)
      assert_not_nil(shipment.target_at)
      assert_not_nil(shipment.tracking_number)
      assert_not_nil(shipment.type)
      assert_not_nil(shipment.url)
    end
  end

  def test_customers_created
    @shipments.each do |shipment|
      assert_instance_of(Customer, shipment.customer)
    end
  end

  def test_customers_have_variables
    @shipments.each do |shipment|
      assert_not_nil(shipment.customer.country)
      assert_not_nil(shipment.customer.email)
      assert_not_nil(shipment.customer.first_name)
      assert_not_nil(shipment.customer.id)
      assert_not_nil(shipment.customer.last_name)
      assert_not_nil(shipment.customer.location)
      assert_not_nil(shipment.customer.name)
      assert_not_nil(shipment.customer.type)
    end
  end

  def test_fulfillments_created
    @shipments.each do |order|
      order.fulfillments.each do |fulfillment|
        assert_instance_of(Fulfillment, fulfillment)
      end
    end
  end

  def test_fulfillments_have_variables
    @shipments.each do |shipment|
      shipment.fulfillments.each do |fulfillment|
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

  def test_labels_created
    @shipments.each do |shipment|
      shipment.labels.each do |label|
        assert_instance_of(Label, label)
      end
    end
  end

  def test_labels_have_variables
    @shipments.each do |shipment|
      shipment.labels.each do |label|
        assert_not_nil(label.api)
        assert_not_nil(label.carrier)
        assert_not_nil(label.cost)
        assert_not_nil(label.created_at)
        assert_not_nil(label.ezp_created_at)
        assert_not_nil(label.ezp_updated_at)
        assert_not_nil(label.filetype)
        assert_not_nil(label.financial_status)
        assert_not_nil(label.height)
        assert_not_nil(label.id)
        assert_not_nil(label.is_test)
        assert_not_nil(label.is_void)
        assert_not_nil(label.length)
        assert_not_nil(label.overlay_cdn)
        assert_not_nil(label.overlay_s3)
      end
    end
  end

  def test_addresses_created
    @shipments.each do |shipment|
      assert_instance_of(ShipAddress, shipment.ship_address)
    end
  end

  def test_addresses_have_variables
    @shipments.each do |shipment|
      assert_not_nil(shipment.ship_address.city)
      assert_not_nil(shipment.ship_address.company)
      assert_not_nil(shipment.ship_address.country)
      assert_not_nil(shipment.ship_address.icon)
      assert_not_nil(shipment.ship_address.id)
      assert_not_nil(shipment.ship_address.phone_number)
      assert_not_nil(shipment.ship_address.state)
      assert_not_nil(shipment.ship_address.status)
      assert_not_nil(shipment.ship_address.street)
      assert_not_nil(shipment.ship_address.to)
      assert_not_nil(shipment.ship_address.type)
      assert_not_nil(shipment.ship_address.unit)
      assert_not_nil(shipment.ship_address.zip_code)
    end
  end

  def test_fulfillment_dependencies
    @shipments.each do |shipment|
      shipment.fulfillments.each do |fulfillment|
        assert_instance_of(Instance, fulfillment.instance)
        assert_instance_of(Order, fulfillment.order)
      end
    end
  end



end