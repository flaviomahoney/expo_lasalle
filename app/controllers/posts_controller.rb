class PostsController < ApplicationController
    def index
        @posts = Post.all
    end

    def new
        @post = Post.new
    end

    def create
        @post = Post.new(post_params)
		@post.save
		redirect_to posts_path
    end

    private

    def set_post
        @post = Post.find(params[:id])
      end
    
    def post_params
        params.require(:post).permit(:description, :photo)
    end
end
