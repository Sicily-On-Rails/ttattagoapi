class PlacesProduct < ApplicationRecord
  belongs_to :product
  belongs_to :place
end
