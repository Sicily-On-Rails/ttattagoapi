module Types
  class QueryType < Types::BaseObject
    # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    # Add root-level fields here.
    # They will be entry points for queries on your schema.

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
    
  end
end
