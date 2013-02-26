ApptyDev::Application.routes.draw do
  resources :users do
    member do
      put '/smart_payment', to: 'users#smart_payment'
      put '/globe_payment', to: 'users#globe_payment'
      put '/lbc_payment',   to: 'users#lbc_payment'
      get '/gcash',         to: 'users#gcash', as: :gcash
      get '/smoney',        to: 'users#smoney', as: :smoney
      get '/lbc',           to: 'users#lbc', as: :lbc
      put '/my_account',    to: 'users#my_account'
      get '/account',       to: 'users#account', as: :account
      put '/redeem',        to: 'users#redeem'
      get '/redeem_coins',  to: 'users#redeem_coins', as: :redeem_coins
    end
  end
  
  root :to => "users#index"
  match "/auth/:provider/callback" => "sessions#create"
  match "/auth/failure" => "sessions#failure"
  match "/signout" => "sessions#destroy", :as => :signout
  match '/contact',                 to: 'users#contact'
  match '/how_to',                  to: 'users#how_to'
  match '/redeem_coins',            to: 'users#redeem_coins'
  match '/buy_coins',               to: 'users#buy_coins'
  match '/account',                 to: 'users#account'

  match '/globe_payment',           to: 'users#globe_payment'
  match '/gcash',                   to: 'users#gcash'
  match '/smart_payment',           to: 'users#smart_payment'
  match '/smoney',                  to: 'users#smoney'
  match '/lbc_payment',             to: 'users#lbc_payment'
  match '/lbc',                     to: 'users#lbc'
  match '/my_account',              to: 'users#my_account'
  match '/account',                 to: 'users#account'
  match '/redeem',                  to: 'users#redeem'
  match '/redeem_coins',            to: 'users#redeem_coins'
  
end
