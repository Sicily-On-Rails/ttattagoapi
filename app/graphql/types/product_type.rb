# frozen_string_literal: true

module Types
  class ProductType < Types::BaseObject
    field :id, ID, null: false
    field :name, String
    field :description, String
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
    field :short_description, String
    field :slug, String
    field :photos, [Types::PhotoType]
    field :places, [Types::PlaceType]

    def name 
      ActionView::Base.full_sanitizer.sanitize(object.name)
    end
    
  end
end
