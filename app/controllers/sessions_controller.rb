class SessionsController < ApplicationController
  def new

  end

  def create
    user = User.find_by(:email => params[:email])
    if user.present? && user.authenticate(params[:password])
      if user.zone.present? == false
        Rails.logger.info "the users zone is #{user.zone.name}"
         user.zone = params[:zone]
         user.save
         Time.zone = user.zone.name
      else
        Rails.logger.info "the users zone is #{user.zone} and had alrady bin set"
        Time.zone = user.zone.name
      end
      Rails.logger.info "the time zone is #{Time.zone}"
      session[:user_id] = user.id
      redirect_to root_url, :notice => "Welcome back, #{user.name}."
    else
      logger.info "Somebody tried to login with an email of #{params[:email]}"
      flash.now[:error] = "Something went wrong. Please try again."
      render 'new'
    end
  end

  def destroy
    reset_session
    redirect_to root_url, :notice => "Signed out successfully."
  end
end
