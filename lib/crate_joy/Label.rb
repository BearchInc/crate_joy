class Label
  attr_accessor :api
  attr_accessor :carrier
  attr_accessor :cost
  attr_accessor :created_at
  attr_accessor :ezp_created_at
  attr_accessor :ezp_updated_at
  attr_accessor :filetype
  attr_accessor :financial_status
  attr_accessor :height
  attr_accessor :id
  attr_accessor :is_test
  attr_accessor :is_void
  attr_accessor :length
  attr_accessor :overlay_cdn
  attr_accessor :overlay_s3
  attr_accessor :predefined_package
  attr_accessor :prepaid
  attr_accessor :tracking
  attr_accessor :type
  attr_accessor :url
  attr_accessor :width

  def initialize(json={})
    @api = json['api']
    @carrier = json['carrier']
    @cost = json['cost']
    @created_at = json['created_at']
    @ezp_created_at = json['ezp_created_at']
    @ezp_updated_at = json['ezp_updated_at']
    @filetype = json['filetype']
    @financial_status = json['financial_status']
    @height = json['height']
    @id = json['id']
    @is_test = json['is_test']
    @is_void = json['is_void']
    @length = json['length']
    @overlay_cdn = json['overlay_cdn']
    @overlay_s3 = json['overlay_s3']
    @predefined_package = json['predefined_package']
    @prepaid = json['prepaid']
    @tracking = json['tracking']
    @type = json['type']
    @url = json['url']
    @width = json['width']
  end

end