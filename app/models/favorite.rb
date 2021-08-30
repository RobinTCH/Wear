class Favorite < ApplicationRecord
  # products
  belongs_to :product

  # users
  belongs_to :user

end
