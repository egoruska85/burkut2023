class Nophoto < ApplicationRecord
  has_one_attached :img

  validates :img, presence: true

end
