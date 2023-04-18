class Product < ApplicationRecord
    validates :product_name, :price, :description, presence: true
    validates :price, numericality: true
    belongs_to :user
end
