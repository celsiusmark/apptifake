class TelcoMoney < ActiveRecord::Base
  attr_accessible :user_id, :type, :reference, :amount, :expiry, :created
end
