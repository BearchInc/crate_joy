class ShipAddress
  attr_accessor :city
  attr_accessor :company
  attr_accessor :country
  attr_accessor :icon
  attr_accessor :id
  attr_accessor :phone_number
  attr_accessor :state
  attr_accessor :status
  attr_accessor :status_message
  attr_accessor :street
  attr_accessor :to
  attr_accessor :type
  attr_accessor :unit
  attr_accessor :zip_code

  def initialize(json={})
    @city = json['city']
    @company = json['company']
    @country = json['country']
    @icon = json['icon']
    @id = json['id']
    @phone_number = json['phone_number']
    @state = json['state']
    @status = json['status']
    @status_message = json['status_message']
    @street = json['street']
    @to = json['to']
    @type = json['type']
    @unit = json['unit']
    @zip_code = json['zip_code']
  end

end