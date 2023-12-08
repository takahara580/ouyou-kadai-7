class FavoritesController < ApplicationController
  def create
    @book = Book.find(params[:book_id])
    favorite = current_user.favorites.new(book_id: @book.id) # @book.id と修正
    favorite.save
  end

  def destroy
    @book = Book.find(params[:book_id]) # @book と修正
    favorite = current_user.favorites.find_by(book_id: @book.id) # @book.id と修正
    if favorite
      favorite.destroy
    end
  end
end
