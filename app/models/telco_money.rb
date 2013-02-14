class TelcoMoney < ActiveRecord::Base
  attr_accessible :amount, :created, :expiry, :reference, :type, :user_id

  belongs_to :user
end
