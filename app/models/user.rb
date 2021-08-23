class User < ApplicationRecord
  # feedbacks
  has_many :feedbacks

  # articles
  has_many :articles, dependent: :destroy

  # favorites
  has_many :favorites, dependent: :destroy
end
