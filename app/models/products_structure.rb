class ProductsStructure < ApplicationRecord
  belongs_to :structure
  belongs_to :product
end
