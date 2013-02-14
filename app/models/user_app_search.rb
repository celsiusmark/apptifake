class UserAppSearch < ActiveRecord::Base
  attr_accessible :created, :query, :type, :user_id

  belongs_to :user
end
