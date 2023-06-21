class Dependproduct < ApplicationRecord
  belongs_to :product
  has_one_attached :picture
end
