class User < ActiveRecord::Base
  attr_accessible :bday, :email, :uid_fb, :first_name, :full_name, :gender, :location, :provider, :number_smart, :number_globe, :number_notify

  has_many :debits
  has_many :prepaid_pins
  has_many :telco_moneys
  has_many :user_app_searchs
  has_one :survey

  def self.create_with_omniauth(auth)
    create! do |user|
      user.provider   = auth["provider"]
      user.uid_fb     = auth["uid"]
      user.full_name  = auth["info"]["name"]
      user.first_name = auth["info"]["first_name"]
      user.email      = auth["info"]["email"]
      user.bday       = auth["extra"]["raw_info"]["birthday"]
      user.gender     = auth["extra"]["raw_info"]["gender"]
      user.location   = auth["info"]["location"]
    end
  end

end
