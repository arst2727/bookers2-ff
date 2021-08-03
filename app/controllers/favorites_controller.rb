class FavoritesController < ApplicationController
  before_action :authenticate_user!
  before_action :book_params
  # 投稿のidを取得

  def create
    @favorite = Favorite.create(user_id: current_user.id, book_id: @book.id)
    
    # favorite = @book.favorites.new(user_id: current_user.id)
    # favorite.save
    # redirect_to request.referer
  end

  def destroy
    @favorite = Favorite.find_by(user_id: current_user.id, book_id: @book.id).destroy

    # favorite = @book.favorites.find_by(user_id: current_user.id)
    # favorite.destroy
    # redirect_to request.referer
  end
  
  private
  
  def book_params
    @book = Book.find(params[:book_id])
  end
  
end
