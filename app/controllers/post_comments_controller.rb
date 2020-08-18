class PostCommentsController < ApplicationController

    def new
        @post_comment = PostComment.new
    end

    def create
        @post_comment = PostComment.new(comment_params)
        if @post_comment.valid?
            @post_comment.save
            redirect_to post_comment_path(@post_comment)
        else
            flash[:messages] = @post_comment.errors.messages
            redirect_to new_post_comment_path
        end
    end

    private

    def comment_params
        params.require(:post_comment).permit(:user_id, :post_id, :description)
    end
end