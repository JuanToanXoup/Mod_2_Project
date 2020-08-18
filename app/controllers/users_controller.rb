class UsersController < ApplicationController
    before_action :authorized
    def index
        @users = User.all
    end

    def create
        @user = User.new(user_params)
        if @user.valid?
            @rand = rand(15)
            @user.avatar.attach(io: File.open("app/assets/images/avatars/#{@rand}.jpg"),filename: "#{@rand}.jpg", content_type: 'image/jpg')
            @user.save
            redirect_to user_path(@user)
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