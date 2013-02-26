class Debit < ActiveRecord::Base
  attr_accessible :category, :created, :currency, :email_recipient, :exchange_rate, :fixed_cost, :fixed_cost_converter, :iid, :itunes_category, :margin, :processed, :sender_name, :status, :store, :tier, :title, :url_web, :user_id
  belongs_to :user
end
