class Feedback < ApplicationRecord
  # products
  belongs_to :product

  # users
  belongs_to :user
end
