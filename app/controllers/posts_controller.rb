class PostsController < ApplicationController
    def index
        @posts = Post.all
    end

    def new
        @post = Post.new
    end

    def create
        @post = Post.new(post_params)
        authorize @post
        if @post.save
          flash[:success] = "Object successfully created"
          redirect_to @post
        else
          flash[:alert] = "Something went wrong"
          render 'new'
        end
    end

    private

    def set_post
        @post = Post.find(params[:id])
      end
    
    def post_params
        params.require(:post).permit(:description, :photo)
    end
end
