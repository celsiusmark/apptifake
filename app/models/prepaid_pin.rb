class PrepaidPin < ActiveRecord::Base
  attr_accessible :created, :denomination, :distributor, :expiry, :loaded, :pin_code, :pin_name, :pin_type, :user_id

  belongs_to :user
end
