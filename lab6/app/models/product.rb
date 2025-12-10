class Product < ApplicationRecord
    belongs_to :category
    has_many :movements

    validates :name, presence: true
    validates :quantity, numericality: { greater_than_or_equal_to: 0 }
    validates :price, numericality: { greater_than_or_equal_to: 0 }
end
