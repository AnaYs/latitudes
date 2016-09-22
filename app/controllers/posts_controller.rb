class PostsController < ApplicationController

  before_action :set_post, only: [:show, :edit, :update, :destroy]
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @posts = Post.all.order("created_at DESC")
    @sample_post = Post.all.samplee
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)

    respond_to do |format|
      if @post.save
        format.html { redirect_to post_path @post , notice: 'Post was created.' }
      else
        format.html { render :new }
      end
    end
  end

  def show
  end

  def edit
  end

  def update
    respond_to do |format|
      if @post.update(post_params)
        format.html { redirect_to post_path @post, notice: 'Post was updated.'}
      else
        format.html { render :edit}
      end
    end
  end

  def destroy
    @post.destroy

    redirect_to posts_path
  end

private

  def set_post
    @post = Post.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:title, :abstract, :content, photos: [])
  end
end
