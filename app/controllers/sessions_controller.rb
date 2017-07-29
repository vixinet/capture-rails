class SessionsController < ApplicationController
  
  def new
    respond_to do |format|
      format.html
      format.js
    end
  end

  def create
    respond_to do |format|
      user = User.find_by(email: params[:session][:email].downcase)
      if user && user.authenticate(params[:session][:password])
        log_in user
        remember(user)
        format.html { redirect_to dashboard_url }
        format.js { redirect_to dashboard_url }
      else
      	flash.now[:error] = 'Invalid email/password combination'
        format.html { render :new }
        format.js { render partial:'layouts/handle_flashes' }
      end
    end
  end

  def destroy
    log_out if logged_in?
    redirect_to root_url
  end

end
