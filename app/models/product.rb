class Product < ApplicationRecord
  # brands
  belongs_to :brand

  # feedbacks
  has_many :feedbacks, dependent: :destroy

  # favorites
  belongs_to :favorite

  # validation
  validates :name, :composition, presence: true, uniquess: { scope: :brand_id, message: "this product for this brand already exists" }
  validates :description, length: { minimum: 6, message: "description must be at least 6 character-long" }
  validates :environment, presence: true,
                          numericality: { only_integer: true, message: "must be an integer between 1 and 100" },
                          inclusion: { in: (1..100), message: "must be an integer between 1 and 100" }
  validates :labor, presence: true,
                    numericality: { only_integer: true, message: "must be an integer between 1 and 100" },
                    inclusion: { in: (1..100), message: "must be an integer between 1 and 100" }
  validates :animal, presence: true,
                     numericality: { only_integer: true, message: "must be an integer between 1 and 100" },
                     inclusion: { in: (1..100), message: "must be an integer between 1 and 100" }
  validates :composition, presence: true,
                          numericality: { only_integer: true, message: "must be an integer between 1 and 100" },
                          inclusion: { in: (1..100), message: "must be an integer between 1 and 100" }
end
