class FriendsController < ApplicationController
    before_action :authorized
    def index
        @friends = Friend.all
    end

    def new
        @friend = Friend.new
    end

    def create
        @friend = Friend.new
        @friend.follower_id = flash[:user_ids]["follower_id"]
        @friend.followed_id = flash[:user_ids]["followed_id"]
        if @friend.valid?
            @friend.save
        end
        redirect_to user_path(flash[:user_ids]["follower_id"])
    end

    def show
        find_friend
    end

    def edit

    end

    def update

    end

    def destroy
        find_friend
        @friend.destroy
    end

    private 
    def find_friend
        @friend = Friend.find_by(id: params[:id])
    end

    def friend_params
        params.require(:friend).permit(:follower_id, :followed_id)
    end
end