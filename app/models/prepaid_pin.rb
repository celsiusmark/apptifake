class PrepaidPin < ActiveRecord::Base
  attr_accessible :denomination, :distributor, :expiry, :loaded, :pin_code, :pin_name, :pin_type, :user_id, :created
  belongs_to :user
end
