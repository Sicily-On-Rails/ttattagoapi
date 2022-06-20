module Types
  class QueryType < Types::BaseObject
    # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    field :places, [Types::PlaceType], null: false
    def places
      Place.all
    end

    field :place, PlaceType, "Find a place by id" do
      argument :id, ID 
    end
    def place(id:)
      Place.find(id)
    end

    field :point, PointType, "Find a point by id" do
      argument :id, ID 
    end
    def point(id:)
      Point.find(id)
    end

    field :city, PlaceType, "Find a city by name" do
      argument :name, String
    end
    def city(name:) 
      #Place.find_sole_by(city: name)
      city = Place.where('lower(city) = ?', name).first
    end

    field :activity, ActivityType, "Find an activity by id" do
      argument :id, ID 
    end
    def activity(id:)
      Activity.find(id)
    end
    
    field :product, ProductType, "Find a product by id" do
      argument :id, ID
    end
    def product(id:)
      Product.find(id)
    end 
  end
end
