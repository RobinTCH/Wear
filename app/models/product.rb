class Product < ApplicationRecord
  # brands
  belongs_to :brand

  # feedbacks
  has_many :feedbacks, dependent: :destroy

  # favorites
  belongs_to :favorite
end
