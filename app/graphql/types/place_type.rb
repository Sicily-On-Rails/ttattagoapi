# frozen_string_literal: true

module Types
  class PlaceType < Types::BaseObject
    field :id, ID, null: false
    field :city, String
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
    field :image, String
    field :slug, String
    field :latitude, Float
    field :longitude, Float
    field :copyright, String
    field :points, [Types::PointType], null: false
    field :products, [Types::ProductType]
  end
end
