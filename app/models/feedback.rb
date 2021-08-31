class Feedback < ApplicationRecord
  # products
  belongs_to :product

  # users
  belongs_to :user

  has_one_attached :picture_worn

  # validation
  validates :purchase_date, presence: true
  validates :comment, length: { minimum: 12, message: "comment must be at least 12 character-long" }
  # validates :product_id, uniqueness: { scope: :user_id, message: 'You already reviewed this product'}

  validate :purchase_date_cannot_be_in_the_futur

  def time_used
    nb_months = (self.created_at.to_date - self.purchase_date).to_i / 30
    nb_months = nb_months.to_i
    if nb_months.zero?
      nb_days = (self.created_at.to_date - self.purchase_date).to_i
      nb_days > 1 ? "#{nb_days} days" : "#{nb_days} day"
    elsif nb_months > 12
      nb_months > 24 ? "#{nb_months % 12} years" : "#{nb_months % 12} year"
    else
      nb_months > 1 ? "#{nb_months} months" : "#{nb_months} month"
    end
  end

  private

  def purchase_date_cannot_be_in_the_futur
    if purchase_date.present? && purchase_date > Date.today
      errors.add(:feedback, "Back to the futur!")
    end
  end

end
