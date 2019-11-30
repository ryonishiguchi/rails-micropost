class ToppagesController < ApplicationController
  def index
    if logged_in?
      @micropost = current_user.microposts.build
      @microposts = current_user.feed_microposts.order('created_at DESC').page(params[:page])
      @favorite = current_user.favorites.build
      #@favorites = current_user.feed_favorites.order('created_at DESC').page(params[:page])
    end
  end


end