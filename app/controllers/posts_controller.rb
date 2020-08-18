class PostsController < ApplicationController
    before_action :authorized
    def index
        @posts = Post.all
        @past_posts = Post.all.select{|p| p.meetup_date < DateTime.now}
        @upcoming_posts = Post.all.select{|p| p.meetup_date > DateTime.now}
    end

    def new
        @post = Post.new
    end

    def create
        
        @post = Post.new(post_params)
        if @post.valid?
            
            @post.save
            redirect_to post_path(@post)
        else
            
            flash[:messages] = @post.errors.messages
            redirect_to new_post_path
        end
    end

    def show
        find_post
    end

    def edit
        find_post
    end

    def update
        find_post
        @post.update(post_params)
        redirect_to post_path
    end

    def destroy

    end

    private 
    def find_post
        @post = Post.find(params[:id])
    end

    def post_params
        params.require(:post).permit(:user_id, :trail_id, :title, :description, :meetup_date)
    end
end