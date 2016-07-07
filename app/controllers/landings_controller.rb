class LandingsController < ApplicationController
  before_action :set_post, only: :show

  def index
    @posts = Post.where(:published => true)
  end

  def show
  end

  private

  def set_post
    @post = Post.find(params[:id])
  end
end
