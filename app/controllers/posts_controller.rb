class PostsController < ApplicationController
    before_action :authorized
    def index
        @posts = Post.all
    end

    def new
        @post = Post.new
    end

    def create
        @post = Post.new(post_params)
        if @post.valid?
            @trail.save
            redirect_to post_path(@post)
        else
            flash[:message] = @post.error.message
            redirect_to '/post/new'
        end
    end

    def show

    end

    def edit

    end

    def update

    end

    def destroy

    end

    private 
    def find_post
        @post = Post.find(params[:id])
    end

    def post_params
        params.require(:post).permit(:user_id, :trail_id, :title, :description)
    end
end