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

  private

  def purchase_date_cannot_be_in_the_futur
    if purchase_date.present? && purchase_date > Date.today
      errors.add(:feedback, "Back to the futur!")
    end
  end
end
