class ProductsController < ApplicationController
  def index
    if params[:query].present?
      sql_query = "category ILIKE :query OR description ILIKE :query"
      @products = Product.where(sql_query, query: "%#{params[:query]}%")
    else
      @products = Product.all
    end
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
