class GiftsController < ApplicationController
  def index
    @posts = Post.all
  end
end
