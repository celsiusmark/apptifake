class ApplicationController < ActionController::Base
  protect_from_forgery

  helper_method :current_user, :coins

  private

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def coins
    @prepaid_pin = PrepaidPin.where(user_id: current_user.id)
    @ppsum = @prepaid_pin.sum(:denomination)
    @debit = Debit.where(user_id: current_user.id)
    @dsum  = @debit.sum(:tier)
    @coins = @ppsum - @dsum
    @coins.to_i
  end
end
