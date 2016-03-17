class Product
  attr_accessor :deleted
  attr_accessor :id
  attr_accessor :name
  attr_accessor :single_purchasable

  def initialize(json={})
    @deleted = json['deleted']
    @id = json['id']
    @name = json['name']
    @single_purchasable = json['single_purchasable']
  end

end