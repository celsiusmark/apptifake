ApptyDev::Application.routes.draw do
  root :to => "users#index"
  match "/auth/:provider/callback" => "sessions#create"
  match "/auth/failure" => "sessions#failure"
  match "/signout" => "sessions#destroy", :as => :signout
end
