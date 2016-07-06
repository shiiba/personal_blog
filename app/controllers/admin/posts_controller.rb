class Admin::PostsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_post, only: [:show, :edit, :update, :destroy]

  def index
    @posts = Post.all
  end

  def show
    puts "hitting post route"
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)

    if @post.save
      redirect_to admin_posts_path
    else
      render :action => :new
    end
  end

  def edit
    # puts "here's the post: #{@post.title}"
  end

  def update
    if @post.update
      redirect_to @post
    else
      render :action => :edit
    end
  end

  def destroy
    @post.destroy
    redirect_to admin_posts_path
  end

  private

  def set_post
    @post = Post.find(params[:id])
  end

  def post_params
    params.permit(:title, :body, :published)
  end

end
