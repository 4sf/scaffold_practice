class PostsController < ApplicationController
  # before_action :find_post, {only: [:show, :edit, :update, :destroy]}
  before_action :find_post, only: [:show, :edit, :update, :destroy]

  def index
    @posts = Post.all
  end

  def new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to '/'
    else
      flash[:alert] = "제목과 내용은 필수야 통스통스야"
      redirect_to :back
    end
  end

  def show
  end

  def edit
  end

  def update
    @post.update(post_params)
    redirect_to @post
  end

  def destroy
    @post.destroy
    redirect_to '/'
  end

  private

  def find_post
    @post = Post.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:title, :content)
  end
end
