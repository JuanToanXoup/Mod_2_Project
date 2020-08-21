  
class AuthController < ApplicationController

    def login
      if current_user
        redirect_to user_path(current_user)
      else
        render :login
      end
    end

    def sign_up
      @user = User.new
      render :sign_up
    end
  
    def verify
      @user = User.find_by(username: login_params[:username])
  
      if @user && @user.password_digest == login_params[:password]
        session[:user_id] = @user.id
        redirect_to user_path(@user)
      else
        flash[:error] = 'Login failed. Please enter a valid Username and Password or Create a New Account.'
        redirect_to login_path
      end
    end
  
    def logout
      session[:user_id] = nil
      redirect_to login_path
    end
  
    private
    def login_params
      params.require(:login).permit(:username,:password)
    end
  
  end