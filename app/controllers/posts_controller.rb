class PostsController < ApplicationController
  def index
      @posts = Post.all
  end

  def new
      @post = Post.new
  end

  def create
      @post = Post.new(post_params)
      if @post.save
          redirect_to root_path
      end
  end

  def show
      @post = Post.find(params[:id])
  end

  def edit
      @post = Post.find(params[:id])
  end
  def update
      @post = Post.find(params[:id])
      @post.update(title:params[:title], body: params[:body])
      @post.save 
      redirect_to root_path
  end


  private
  def post_params
      params.require(:post).permit(:title, :body, :url)
  end
end
