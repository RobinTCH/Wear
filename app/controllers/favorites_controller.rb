class FavoritesController < ApplicationController
  def index
    @products = []
    Favorite.where(user: current_user).each do |favorite|
      @products << favorite.product
    end
  end

  def create
    @favorite = Favorite.new(product_id: params[:product].to_i)
    @favorite.user = current_user
    @favorite.save
    respond_to { |format| format.js }
  end

  def destroy
    @favorite = Favorite.find(params[:id])
    @favorite.destroy
    respond_to { |format| format.js }
  end
end
