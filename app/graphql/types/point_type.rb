# frozen_string_literal: true

module Types
  class PointType < Types::BaseObject
    field :id, ID, null: false
    field :name, String
    field :description, String
    field :place_id, Integer
    field :street, String
    field :street_number, String
    field :zipcode, String
    field :province, String
    field :city, String
    field :country, String
    field :latitude, Float
    field :longitude, Float
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
    field :short_description, String
    field :slug, String
    field :copyright, String
  end
end
