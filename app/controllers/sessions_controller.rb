class SessionsController < ApplicationController

  def new
  end

  def create
    if session[:username]
      session[:username] = params[:username]
      redirect_to '/'
      if session[:name].nil?
        session[:name]
      end
    else
      redirect_to '/login'
    end
  end

  def destroy
    session.delete :username
  end

end
