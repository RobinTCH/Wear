class Product < ApplicationRecord
  # brands
  belongs_to :brand

  # feedbacks
  has_many :feedbacks, dependent: :destroy

  # favorite
  belongs_to :favorite
end
