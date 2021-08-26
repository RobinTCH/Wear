class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def show
    @feedback = Feedback.new
    @product = Product.find(params[:id])
  end

  private

  def product_params
    params.require(:product).permit(:name, :description, :picture, :environment,
                                    :environement_details, :labor, :labor_details, :animal,
                                    :animals_details, :composition, :composition_details)
  end
end
