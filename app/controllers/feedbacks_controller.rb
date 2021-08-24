class FeedbacksController < ApplicationController
  def index
    @feedbacks = Feedback.all
  end

  def show
    @feedback = Feedback.find(params[:id])
  end

  def create
    @feedback = Feedback.new(feedback_params)
    @feedback.product_id = params[:product_id]
    @feedback.user = current_user
    if @feedback.save
      redirect_to feedback_path(@feedback)
    else
      @product = @feedback.product
      render "products/show"
    end
  end

  private

  def feedback_params
    params.require(:feedback).permit(:average_durability, :comment)
  end
end
