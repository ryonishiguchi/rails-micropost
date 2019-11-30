class FavoritesController < ApplicationController
  def create
    #@favorite = current_user.favorites.build(micropost_params)
    #user = User.find(params[:micropost_id])
    micropost = Micropost.find(params[:micropost_id])
    current_user.fav(micropost)
    flash[:success] = 'お気に入りに登録しました。'
    redirect_back(fallback_location: root_url)
  end

  def destroy
    #user = User.find(params[:micropost_id])
    micropost = Micropost.find(params[:micropost_id])
    current_user.unfav(micropost)
    flash[:success] = 'お気に入りを解除しました。'
    redirect_back(fallback_location: root_url)
  end
end
