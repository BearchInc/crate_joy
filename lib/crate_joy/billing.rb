class Billing
  attr_accessor :id
  attr_accessor :rebill_day
  attr_accessor :rebill_months
  attr_accessor :rebill_weeks
  attr_accessor :rebill_window
  attr_accessor :store_id
  attr_accessor :type

  def initialize(json={})
    @id = json['id']
    @rebill_day = json['rebill_day']
    @rebill_months = json['rebill_months']
    @rebill_weeks = json['rebill_weeks']
    @rebill_window = json['rebill_window']
    @store_id = json['store_id']
    @type = json['type']

  end
end