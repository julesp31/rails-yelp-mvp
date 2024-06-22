class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  validates :name, :address, :phone_number, uniqueness: true, presence: true
  CATEGORIES = ["chinese", "italian", "japanese", "french", "belgian"]
  validates :category, presence: true, inclusion: { in: CATEGORIES }
end
