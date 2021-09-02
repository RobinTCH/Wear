class Product < ApplicationRecord
  before_validation :strip_blanks

  # Picture from cloudinary
  has_one_attached :picture

  # brands
  belongs_to :brand

  # feedbacks
  has_many :feedbacks, dependent: :destroy

  # favorites
  has_many :favorites, dependent: :destroy

  # validation
  validates :name, presence: true, uniqueness: { scope: :brand_id, message: "this product for this brand already exists" }
  validates :description, length: { minimum: 6, message: "description must be at least 6 character-long" }
  validates :environment, presence: true,
                          numericality: { only_integer: true, message: "must be an integer between 0 and 100" },
                          inclusion: { in: (0..100), message: "must be an integer between 0 and 100" }
  validates :labor, presence: true,
                    numericality: { only_integer: true, message: "must be an integer between 0 and 100" },
                    inclusion: { in: (0..100), message: "must be an integer between 0 and 100" }
  validates :animal, presence: true,
                     numericality: { only_integer: true, message: "must be an integer between 0 and 100" },
                     inclusion: { in: (0..100), message: "must be an integer between 0 and 100" }
  validates :composition, presence: true,
                          numericality: { only_integer: true, message: "must be an integer between 0 and 100" },
                          inclusion: { in: (0..100), message: "must be an integer between 0 and 100" }

  validates :gender, inclusion: {in: ['Woman', 'Man']}

  def favorite?(user)
    Favorite.find_by(user: user, product: self)
  end

  def quality_color(number)
    case number
    when 80..100
      return "#AAD576"
    when 60..79
      return "#FFD670"
    when 40..59
      return "#F4A259"
    else
      return "#ee6055"
    end
  end

  private

  def strip_blanks
    self.name = name.strip
  end
end
