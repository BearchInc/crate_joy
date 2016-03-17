class TermPrice
  attr_accessor :id
  attr_accessor :price
  attr_accessor :term_id
  attr_accessor :type

  def initialize(json={})
    @id = json['id']
    @price = json['price']
    @term_id = json['term_id']
    @type = json['type']
  end

end