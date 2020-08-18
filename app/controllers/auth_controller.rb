  
class AuthController < ApplicationController

    def login
      render :login
    end

    def sign_up
      @user = User.new
      render :sign_up
    end
  
    def verify
      @user = User.find_by(name: login_params[:name])
  
      if @user && @user.authenticate(login_params[:password])
        session[:user_id] = @user.id
        redirect_to user_path(@user)
      else
        flash[:error] = 'Login failed..'
        redirect_to login_path
      end
    end
  
    def logout
      session[:user_id] = nil
      redirect_to login_path
    end
  
    private
    def login_params
      params.require(:login).permit(:name,:password)
    end
  
  end