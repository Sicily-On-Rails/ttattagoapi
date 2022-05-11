# frozen_string_literal: true

module Types
  class PlacesProductType < Types::BaseObject
    field :product_id, Integer, null: false
    field :place_id, Integer, null: false
    field :product, Types::ProductType
    field :place, Types::PlaceType
  end
end
