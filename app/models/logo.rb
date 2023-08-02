class Logo < ApplicationRecord
  has_one_attached :logo

  validates :logo, presence: true
end
