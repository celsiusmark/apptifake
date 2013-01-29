class User < ActiveRecord::Base
  attr_accessible :bday, :email, :fb_uid, :first_name, :full_name, :gender, :location, :provider

  def self.create_with_omniauth(auth)
    create! do |user|
      user.provider   = auth["provider"]
      user.fb_uid     = auth["uid"]
      user.full_name  = auth["info"]["name"]
      user.first_name = auth["info"]["first_name"]
      user.email      = auth["info"]["email"]
      user.bday       = auth["extra"]["raw_info"]["birthday"]
      user.gender     = auth["extra"]["raw_info"]["gender"]
      user.location   = auth["info"]["location"]
    end
  end
end
