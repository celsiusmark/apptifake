class SessionsController < ApplicationController
  def new

  end

  def create
    auth = request.env["omniauth.auth"]
    if auth["uid"]
      @user = User.where(uid_fb: auth["uid"])
      @user.count

      if @user.count == 0
        @user = User.new(params[:user])
        auth  = request.env["omniauth.auth"]
        user  = User.find_by_provider_and_uid_fb(auth["provider"], auth["uid"]) || User.create_with_omniauth(auth)

      else
        auth = request.env["omniauth.auth"]
        user = User.find_by_provider_and_uid_fb(auth["provider"], auth["uid"]).tap do |u|
                    u.update_attributes(full_name:  auth["info"]["name"])
                    u.update_attributes(first_name: auth["info"]["first_name"])
                    u.update_attributes(bday:       auth["extra"]["raw_info"]["birthday"])
                    u.update_attributes(gender:     auth["extra"]["raw_info"]["gender"])
                    u.update_attributes(email:      auth["info"]["email"])
                    u.update_attributes(location:   auth["info"]["location"])

        end
      end
      session[:user_id] = user.id
      redirect_to root_url, notice: "Signed in!"
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url, notice: "Signed out!"
  end

  def failure
    render :text => "Sorry, something went wrong!"
  end
end
