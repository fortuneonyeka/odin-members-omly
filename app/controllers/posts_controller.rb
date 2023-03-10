class PostsController < ApplicationController
  before_action :authenticate_user!, except:[:index]

  def index
    @posts = Post.all.order("created_at DESC")
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to root_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @post = Post.find(params[:id])
  end



  private

  def post_params
    params.require(:post).permit(:title, :body)
  end
end
