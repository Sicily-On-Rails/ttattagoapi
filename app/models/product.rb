class Product < ApplicationRecord
    has_many :photos, as: :imageable
    has_many :places_products
    has_many :places, through: :places_products
end
