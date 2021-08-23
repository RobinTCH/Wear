class Favorite < ApplicationRecord
  # products
  has_many :products

  # users
  belongs_to :user
end
