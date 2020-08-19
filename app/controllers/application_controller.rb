class ApplicationController < ActionController::Base
    helper_method :current_user

    def current_user
      if !session[:user_id].nil? && !session[:user_id] != ""
        @user = User.find_by(id: session[:user_id])
      else
        nil
      end
    end
  
    def logged_in?
      !!current_user
    end
  
    def authorized
      if logged_in?
        true
      else
        flash[:error] = "You must login to see this page."
        redirect_to login_path
      end
    end
end
