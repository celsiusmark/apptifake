Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '545798818787879', '7f8c8424fbb578f3a066050cfb4adf8b',
           {scope: "email,user_birthday,status_update,user_about_me,user_location,user_hometown,user_likes,publish_stream"}
end
