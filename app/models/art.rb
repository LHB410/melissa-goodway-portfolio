class Art < ApplicationRecord
  validates :title, :description, presence: true
  has_one_attached :photo
  monetize :price_cents, allow_nil: true
end
