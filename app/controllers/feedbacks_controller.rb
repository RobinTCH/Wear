class FeedbacksController < ApplicationController
  def index
    @feedbacks = Feedback.all
  end

  def show
    @feedback = Feedback.find(params[:id])
  end

  def create
    @feedback = Feedback.new(feedback_params)
    @feedback.picture_worn.attach(params[:feedback][:picture_worn])
    @product = Product.find(params[:product_id])
    @feedback.product = @product
    @feedback.user = current_user
    if @feedback.save
      respond_to do |format|
        format.js
      end
      redirect_to product_path(@product, anchor: "feedback-#{@feedback.id}")
    else
      render "products/show"
    end
  end

  private

  def feedback_params
    params.require(:feedback).permit(:purchase_date, :comment, :picture_worn)
  end
end
