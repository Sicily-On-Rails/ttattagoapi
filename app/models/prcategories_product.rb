class PrcategoriesProduct < ApplicationRecord
  belongs_to :prcategory
  belongs_to :product
end
