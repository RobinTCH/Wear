class FeedbacksController < ApplicationController
  def index
    @feedbacks = Feedback.all
  end

  def show
    @feedback = Feedback.find(params[:id])
  end

  def create
    @feedback = Feedback.new(feedback_params)
    @product = Product.find(params[:product_id])
    @feedback.product = @product
    @feedback.user = current_user
    if @feedback.save
      respond_to do |format|
        format.js
      end
    else
      render "products/show"
    end
  end

  private

  def feedback_params
    params.require(:feedback).permit(:average_durability, :comment, :product_id)
  end
end
