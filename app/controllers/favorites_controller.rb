class FavoritesController < ApplicationController
  before_action :require_user_logged_in
  

   def create
     micropost = Micropost.find(params[:like_id])
     current_user.like(micropost)
     flash[:success] = 'このmicropostをお気に入り登録しました。'
     redirecto_to user
   end
   
   def destroy
     micropost = Micropost.find(params[:like_id])
     current_user.unlike(micropost)
     flash[:success] = 'お気に入りを解除しました。'
     redirect_to user
   end

end
