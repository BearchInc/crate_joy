class Instance
  attr_accessor :deleted
  attr_accessor :gift
  attr_accessor :id
  attr_accessor :images
  attr_accessor :inventory
  attr_accessor :price
  attr_accessor :product
  attr_accessor :product_id
  attr_accessor :ship_weight
  attr_accessor :sku
  attr_accessor :term_prices
  attr_accessor :type
  attr_accessor :variants

  def initialize(json={})
    @deleted = json['deleted']
    @gift = json['gift']
    @id = json['id']
    @images = json['images']
    @inventory = json['inventory']
    @price = json['price']
    @product = json['product']
    @product_id = json['product_id']
    @ship_weight = json['ship_weight']
    @sku = json['sku']
    @term_prices = json['term_prices']
    @type = json['type']
    @variants = json['variants']
  end
end