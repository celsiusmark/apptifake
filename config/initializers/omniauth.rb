Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '284771504982089', 'b9aeed25aa6d94955d62754e1df954f0',
           {scope: "email,user_birthday,status_update,user_about_me,user_location,user_hometown,user_likes,publish_stream"}
end
