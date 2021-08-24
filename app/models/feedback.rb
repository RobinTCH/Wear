class Feedback < ApplicationRecord
  # products
  belongs_to :product

  # users
  belongs_to :user

  # validation
  validates :average_durability, presence: true,
                                 numericality: { only_integer: true, message: "must be an integer between 0 and 100" },
                                 inclusion: { in: (0..100), message: "must be an integer between 0 and 100" }
  validates :comment, length: { minimum: 12, message: "comment must be at least 12 character-long" },
                      uniqueness: { scope: :user_id, message:'You already reviewed this product'}
end
