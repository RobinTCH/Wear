class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # foreign keys
  has_many :products, through: :favorites
  has_many :favorites, dependent: :destroy
  has_many :feedbacks, dependent: :destroy
  # validation
  validates :email, :username, presence: true, uniqueness: { case_sensitive: false }

  # avatar
  has_one_attached :avatar
end
