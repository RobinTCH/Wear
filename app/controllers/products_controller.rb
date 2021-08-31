class ProductsController < ApplicationController

  def index
    @products = Product.all
    if params[:query].present?
      @products = Product.where("title ILIKE ?", "%#{params[:query]}%")
    end
    if params[:products_filter].present?
      if params[:products_filter][:query].present?
        sql_query = "category ILIKE :query OR description ILIKE :query"
        @products = Product.where(sql_query, query: "%#{params[:products_filter][:query]}%") unless params[:products_filter][:query].empty?
      end

      if params[:products_filter][:gender].present?
        @products = @products.where(gender: params[:products_filter][:gender]) unless params[:products_filter][:gender].empty?
      end

      if params[:products_filter][:category].present?
        @products = @products.where(category: params[:products_filter][:category]) unless params[:products_filter][:category].empty?
      end

      if params[:products_filter][:average_rating].present?
        found_products = []
        @products.each do |product|
          average_rating = (product.environment + product.labor + product.animal + product.composition) / 4
          found_products << product if average_rating >= params[:products_filter][:average_rating].to_i
        end
        @products = found_products
      end
    end
  end

  def show
    @feedback = Feedback.new
    @product = Product.find(params[:id])
    @brands = Brand.all
    @markers = @brands.geocoded.map do |brand|
      {
        lat: brand.latitude,
        lng: brand.longitude,
        info_window: render_to_string(partial: "info_window", locals: { brand: brand }),
      }
    end
  end

  private

  def product_params
    params.require(:product).permit(:name, :description, :picture, :environment,
                                    :environement_details, :labor, :labor_details, :animal,
                                    :animals_details, :composition, :composition_details)
  end
end
