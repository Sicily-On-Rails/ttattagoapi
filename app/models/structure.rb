class Structure < ApplicationRecord
    has_many :products_structures
    has_many :products, through: :products_structures 
end
