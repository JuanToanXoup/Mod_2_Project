class ApplicationController < ActionController::Base
    helper_method :current_author

    def current_author
      if !session[:user_id].nil? && !session[:user_id] != ""
        @author = Author.find_by(id: session[:user_id])
      else
        nil
      end
    end
  
    def logged_in?
      # if current_author.nil?
      #   false
      # else
      #   true
      # end
      !!current_author
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
