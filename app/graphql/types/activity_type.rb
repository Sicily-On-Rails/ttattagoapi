# frozen_string_literal: true

module Types
  class ActivityType < Types::BaseObject
    field :id, ID, null: false
    field :name, String
    field :description, String
    field :street, String
    field :street_number, String
    field :city, String
    field :province, String
    field :zipcode, String
    field :country, String
    field :latitude, Float
    field :longitude, Float
    field :place_id, Integer
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
    field :start_date, GraphQL::Types::ISO8601DateTime
    field :end_date, GraphQL::Types::ISO8601DateTime
    field :short_description, String
    field :slug, String
    field :photos, [Types::PhotoType]
  end
end
