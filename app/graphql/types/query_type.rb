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
      city = Place.where('lower(city) = ?', name.downcase).first
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

    #resources with filters and pagination
    field :productConnection, Types::ProductType.connection_type, null: false do
      argument :ids, [String], required: false
      argument :names, [String], required: false
    end 
    def productConnection(ids: nil, names: nil, **_args)
      @result = Product.all
      if (!ids.nil?)
        @result = @result.where(id: ids)
      end
      if (!names.nil?)
        @result = @result.where(name: names)
      end
      @result
    end

  end
end
