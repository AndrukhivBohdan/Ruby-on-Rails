class Movement < ApplicationRecord
  belongs_to :product

  validates :movement_type, inclusion: { in: ["in", "out"] }
  validates :quantity, numericality: { greater_than: 0 }
end
