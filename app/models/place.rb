class Place < ApplicationRecord
    has_many :points
    has_many :places_products
    has_many :products, through: :places_products
end
