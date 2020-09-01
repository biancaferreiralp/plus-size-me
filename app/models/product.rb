class Product < ApplicationRecord
  belongs_to :user

  validates :name, presence: true
  validates :gender, inclusion: { in: ["feminine", "masculine"] }
  validates :size, inclusion: { in: ["L", "XL", "XXL", "XXXL"] }
  validates :price, presence: true
  validates :category, inclusion: { in: ["shirts", "pants", "dresses", "skirts", "shoes", "jackets"] }
end
