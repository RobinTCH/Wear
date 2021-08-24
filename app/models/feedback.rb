class Feedback < ApplicationRecord
  # products
  belongs_to :product

  # users
  belongs_to :user

  # validation
  validates :average_durability, presence: true,
                                 numericality: { only_integer: true, message: "must be an integer between 1 and 100" },
                                 inclusion: { in: (1..100), message: "must be an integer between 1 and 100" }
  validates :comment, length: { minimum: 12, message: "comment must be at least 12 character-long" }
end
