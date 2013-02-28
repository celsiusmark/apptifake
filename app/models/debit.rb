class Debit < ActiveRecord::Base
  attr_accessible :user_id, :iid, :store, :itunes_category, :currency, :exchange_rate, :fixed_cost, :fixed_cost_converter, :tier, :margin, :title, :category, :url_web, :email_recipient, :sender_name, :status, :processed, :created
  belongs_to :user
end
