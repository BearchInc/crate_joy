class ReceivedGift
  attr_accessor :email
  attr_accessor :expire_date
  attr_accessor :gift_code
  attr_accessor :id
  attr_accessor :message
  attr_accessor :name
  attr_accessor :notif_sent
  attr_accessor :send_date
  attr_accessor :status
  attr_accessor :status_text
  attr_accessor :type

  def initialize(json={})
    @email = json['email']
    @expire_date = json['expire_date']
    @gift_code = json['gift_code']
    @id = json['id']
    @message = json['message']
    @name = json['name']
    @notif_sent = json['notif_sent']
    @send_date = json['send_date']
    @status = json['status']
    @status_text = json['status_text']
    @type = json['type']
  end
end