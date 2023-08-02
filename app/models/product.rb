class Product < ApplicationRecord
  has_one_attached :picture
  has_many :dependproducts
  belongs_to :category

  validates :picture, presence: true
end
