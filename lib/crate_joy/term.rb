class Term
  attr_accessor :description
  attr_accessor :enabled
  attr_accessor :id
  attr_accessor :images
  attr_accessor :name
  attr_accessor :num_cycles
  attr_accessor :type

  def initialize(json={})
    @description = json['description']
    @enabled = json['enabled']
    @id = json['id']
    @images = json['images']
    @name = json['name']
    @num_cycles = json['num_cycles']
    @type = json['type']
  end
end