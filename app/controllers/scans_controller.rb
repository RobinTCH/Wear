class ScansController < ApplicationController
    def new
    end

  def create
    @product = Product.find_by(scan_params)
    if @product
      redirect_to product_path(@product)
    else
      flash[:notice] = "No match found"
      redirect_to new_scan_path
    end
  end

  private

  def scan_params
    params.require(:scan).permit(:barcode)
  end
end
