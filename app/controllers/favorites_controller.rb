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
    redirect_to products_path
  end

  def destroy
    @favorite = Favorite.find(params[:id])
    @favorite.destroy
    if params[:from].present? && params[:from] == "products"
      redirect_to products_path
    else
      redirect_to favorites_path
    end
  end
end
