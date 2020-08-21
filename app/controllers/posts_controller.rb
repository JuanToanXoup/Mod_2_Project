class PostsController < ApplicationController
    before_action :authorized
    
    def following_posts
        @posts = []
        current_user.followeds.each do |followeds| 
            followeds.posts.map do |post|
                @posts << post
            end
        end
        @upcoming_posts = @posts.select{|p| p.meetup_date > DateTime.now}
        @past_posts = @posts.select{|p| p.meetup_date < DateTime.now}
        render :following_posts
    end

    def index
        @posts = Post.all
        @upcoming_posts = @posts.upcoming_post
        @past_posts = @posts.past_post 
    end

    def new
        @post = Post.new
    end

    def create
        @post = Post.new(post_params)
        @post.user_id = current_user.id
        if @post.valid?
            @post.save
            redirect_to post_path(@post)
        else
            flash[:errors] = @post.errors.messages
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
        find_post.destroy
        redirect_to posts_path
    end

    private 
    def find_post
        @post = Post.find(params[:id])
    end

    def post_params
        params.require(:post).permit(:trail_id, :title, :description, :meetup_date)
    end
end