class BikeCommentsController < ApplicationController

    def new
        @bike_comment = BikeComment.new
    end

    def create
        @bike_comment = BikeComment.new(comment_params)
        @bike_comment.bike_id = flash[:bike_id]
        @bike_comment.user_id = current_user.id
        if @bike_comment.valid?
            @bike_comment.save
            redirect_to bike_path(@bike_comment.bike_id)
        else
            flash[:errors] = @bike_comment.errors.messages
            redirect_to new_bike_comment_path
        end
    end

    def edit
        find_post_comment
    end

    def update
        find_post_comment
        @bike_comment.update(comment_params)
        redirect_to bike_path(@bike_comment.bike_id)
    end

    private
    def find_post_comment
        @bike_comment = PostComment.find(params[:id])
    end

    def comment_params
        params.require(:bike_comment).permit(:user_id, :bike_id, :description)
    end
end