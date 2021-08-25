class Feedback < ApplicationRecord
  # products
  belongs_to :product

  # users
  belongs_to :user

  # validation
  validates :average_durability, presence: true,
                                 numericality: { only_integer: true, message: "must be an integer" }
  validates :comment, length: { minimum: 12, message: "comment must be at least 12 character-long" }
  validates :product_id, uniqueness: { scope: :user_id, message: 'You already reviewed this product'}
end
