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
end
