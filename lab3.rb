
// Моделі
class Category < ApplicationRecord
    has_many :products

    validates :name, presence: true
end
class Movement < ApplicationRecord
  belongs_to :product

  validates :movement_type, inclusion: { in: ["in", "out"] }
  validates :quantity, numericality: { greater_than: 0 }
end
class Product < ApplicationRecord
    belongs_to :category
    has_many :movements

    validates :name, presence: true
    validates :quantity, numericality: { greater_than_or_equal_to: 0 }
    validates :price, numericality: { greater_than_or_equal_to: 0 }
end



//Міграції

class CreateCategories < ActiveRecord::Migration[8.1]
  def change
    create_table :categories do |t|
      t.string :name

      t.timestamps
    end
  end
end

class CreateProducts < ActiveRecord::Migration[8.1]
  def change
    create_table :products do |t|
      t.string :name
      t.integer :category_id
      t.integer :quantity
      t.decimal :price
      t.text :description

      t.timestamps
    end
  end
end

class CreateMovements < ActiveRecord::Migration[8.1]
  def change
    create_table :movements do |t|
      t.integer :product_id
      t.string :movement_type
      t.integer :quantity

      t.timestamps
    end
  end
end
