class Restaurant < ApplicationRecord
  VALID_CATEGORIES = ["chinese", "italian", "japanese", "french", "belgian"]
  
  has_many :reviews, dependent: :destroy


  validates :name, :address, :phone_number, :category, presence: true
  validates :category, inclusion: { in: VALID_CATEGORIES }
end
