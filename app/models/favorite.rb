class Favorite < ApplicationRecord
  # products
  belongs_to :products

  # users
  belongs_to :user
end
