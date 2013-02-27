class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def edit
    @user = current_user
    session[:user_id] = @user
  end

  def gcash
    if current_user
      @user = current_user
    else
      flash[:error] = "Sign in to buy coins with Globe Gcash!"
    end
  end

  def globe_payment
    @user = current_user
    if @user.update_attributes(params[:user])
      flash[:success] = "Globe Number saved!"
    end
      redirect_to gcash_path
  end

  def smoney
    if current_user
      @user = current_user
    else
      flash[:error] = "Sign in to buy coins with Smart Money!"
    end
  end

  def smart_payment
    @user = current_user
    if @user.update_attributes(params[:user])
      flash[:success] = "Smart Number saved!"
    end
      redirect_to smoney_path
  end

  def lbc
    if current_user
      @user = current_user
    else
      flash[:error] = "Sign in to buy coins with LBC!"
    end
  end

  def lbc_payment
    @user = current_user
    if @user.update_attributes(params[:user])
      flash[:success] = "LBC notify number saved!"
    end
    redirect_to lbc_path
  end

  def account
    if current_user
      @user = current_user
    else
      flash[:error] = "Sign in to edit account"
    end
  end

  def my_account
    @user = current_user
    if @user.update_attributes(params[:user])
      flash[:success] = "Account Updated"
    end
    redirect_to account_path
  end

  def redeem_coins
    if request.get?
      if current_user
        @prepaid_pin = PrepaidPin.where(pin_code: params[:pin_code]).first
      else
        flash[:error] = "Sign in to Redeem Coins"
      end

    elsif request.put?
      @prepaid_pin = PrepaidPin.where(pin_code: params[:pin_code]).first
      if @prepaid_pin == nil
        flash[:error] = "Invalid pin!"
      else
      if @prepaid_pin.update_attributes(user_id: current_user.id, loaded: DateTime.now)
        flash[:success] = "Coins Redeemed"
      end
      redirect_to redeem_coins_path
      end
    end
  end
end
