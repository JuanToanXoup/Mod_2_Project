class TrailCommentsController < ApplicationController

    def new
        @trail_comment = TrailComment.new
    end

    def create
        @trail_comment = TrailComment.new(comment_params)
        @trail_comment.trail_id = flash[:trail_id]
        @trail_comment.user_id = current_user.id
        if @trail_comment.valid?
            @trail_comment.save
            redirect_to trail_path(@trail_comment.trail_id)
        else
            flash[:errors] = @trail_comment.errors.messages
            redirect_to new_trail_comment_path
        end
    end

    def edit
        find_trail_comment
    end

    def update
        find_trail_comment
        @trail_comment.update(comment_params)
        redirect_to trail_path(@trail_comment.trail_id)
    end

    private
    def find_trail_comment
        @trail_comment = TrailComment.find(params[:id])
    end

    def comment_params
        params.require(:trail_comment).permit(:user_id, :trail_id, :description)
    end
end