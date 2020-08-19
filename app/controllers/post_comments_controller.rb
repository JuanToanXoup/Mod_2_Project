class PostCommentsController < ApplicationController

    def new
        @post_comment = PostComment.new
    end

    def create
        @post_comment = PostComment.new(comment_params)
        @post_comment.post_id = flash[:post_id]
        @post_comment.user_id = current_user.id
        if @post_comment.valid?
            @post_comment.save
            redirect_to post_path(@post_comment.post_id)
        else
            flash[:errors] = @post_comment.errors.messages
            redirect_to new_post_comment_path
        end
    end

    def edit
        find_post_comment
    end

    def update
        find_post_comment
        @post_comment.update(comment_params)
        redirect_to post_path(@post_comment.post_id)
    end

    private
    def find_post_comment
        @post_comment = PostComment.find(params[:id])
    end

    def comment_params
        params.require(:post_comment).permit(:user_id, :post_id, :description)
    end
end