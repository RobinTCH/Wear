class Brand < ApplicationRecord
  # products
  has_many :products, dependent: :destroy

  # validation
  validates :name, presence: true, uniqueness: { message: "this brand already exists" }
  validates :description, presence: true,
                          length: { minimum: 15, message: "description must be at least 15 character-long" }
end
