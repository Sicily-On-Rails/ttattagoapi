# frozen_string_literal: true

module Types
  class StructureType < Types::BaseObject
    field :id, ID, null: false
    field :name, String
    field :description, String
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
    field :street, String
    field :street_number, String
    field :city, String
    field :province, String
    field :zipcode, String
    field :country, String
    field :latitude, Float
    field :longitude, Float
  end
end
