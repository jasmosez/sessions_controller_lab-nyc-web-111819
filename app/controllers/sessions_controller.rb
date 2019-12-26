class SessionsController < ApplicationController

  def new
  end

  def create
    
    if !params[:name] || params[:name] == ""
      redirect_to login_path
    else
      
      session[:name] = params[:name]
      redirect_to '/'
    end
  end

  def destroy
    if !!session[:name]
      session.delete :name
      redirect_to root_path
    else
      redirect_to login_path
    end
  end

  
end