class UsersController < ApplicationController
    before_action :authorized, only: [:index,:show,:edit,:update,:destroy]
    
    def index
        @q = User.ransack(params[:q])
        @users = @q.result(distinct: true)
    end

    def create
        @user = User.new(user_params)
        if @user.valid?
            @rand = rand(16)
            @user.avatar.attach(io: File.open("app/assets/images/avatars/#{@rand}.png"),filename: "#{@rand}.png", content_type: 'image/png')
            @user.save
            flash[:error] = "Welcome! Please sign in with your new Username and Password."
            redirect_to login_path
        else
            flash[:error] = @user.errors.messages
            redirect_to sign_up_path
        end
    end

    def show
        find_user
    end

    def edit
        find_user
    end

    def update
        find_user
        @user.update(user_params)
        redirect_to user_path
    end

    def destroy
    end

    private 
    def find_user
        @user = User.find(params[:id])
    end

    def user_params
        params.require(:user).permit(:username,:password_digest,:name,:age,:skill_level,:address,:avatar)
    end
end