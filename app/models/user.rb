class User < ActiveRecord::Base
  attr_accessible :appstore_location, :bday, :created, :email, :first_name, :full_name, :gender, :ios_device, :last_access_page, :last_access_time, :location, :number_globe, :number_notify, :number_smart, :uid_fb, :uid_key
  has_many :prepaid_pins
  has_many :user_app_searches
  has_many :telco_moneys
  has_many :debits
  has_one :survey

  def self.create_with_omniauth(auth)
    create! do |user|
      user.provider   = auth["provider"]
      user.uid_fb     = auth["uid"]
      user.full_name  = auth["info"]["name"]
      user.first_name = auth["info"]["first_name"]
      user.email      = auth["info"]["email"]
      user.gender     = auth["extra"]["raw_info"]["gender"]
      user.bday       = auth["extra"]["raw_info"]["birthday"]
      user.location   = auth["info"]["location"]
    end
  end
end
