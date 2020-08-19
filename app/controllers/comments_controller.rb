class CommentsController < ApplicationController
    before_action :authorized
    def index
        @comments = Comment.all
        
        
    end

    def new
        @comment = Comment.new
    end

    def create
        
        @comment = Comment.new(comment_params)
        @comment.post_id = flash[:post_id]
        @comment.user_id = current_user.id
        
        if @comment.valid?
            @comment.save
            redirect_to post_path(@comment.post_id)
        else
            flash[:errors] = @comment.errors.messages
            redirect_to new_comment_path
        end
    end

    def show
        find_comment
    end

    def edit
        find_comment
    end

    def update
        find_comment
        @comment.update(comment_params)
        redirect_to comment_path
    end

    def destroy

    end

    private 
    def find_comment
        @comment = Comment.find(params[:id])
    end

    def comment_params
        params.require(:comment).permit(:user_id, :trail_id, :post_id, :bike_id, :description)
    end    
end
