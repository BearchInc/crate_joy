class Customer
  attr_accessor :country
  attr_accessor :email
  attr_accessor :first_name
  attr_accessor :id
  attr_accessor :last_name
  attr_accessor :location
  attr_accessor :name
  attr_accessor :type

  def initialize(json={})
    @country = json['country']
    @email = json['email']
    @first_name = json['first_name']
    @id = json['id']
    @last_name = json['last_name']
    @location = json['location']
    @name = json['name']
    @type = json['type']
  end

end