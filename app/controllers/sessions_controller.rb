class SessionsController < ApplicationController

  def new
  end

  def create
    if session[:username]
      session[:username] = params[:username]
      redirect_to '/'
      if params[:name]
        session[:name] = params[:name]
      end
    else
      redirect_to '/login'
    end
  end

  def destroy
    session.delete :username
  end

end
