module Resolvers
    class RecommendedItems < GraphQL::Schema::Resolver
      # Return type and arguments can be specified either here or in the field arguments.
      # Uncomment the following if you want to put them here.
      #
      # type [CategoryType], null: false
      #
      # argument :order_by, Types::ItemOrder, required: false
      # argument :category, Types::ItemCategory, required: false
  
      # `object` and `context` are provided by default
      def resolve(order_by: nil, category: nil)
        # Call your application logic here
        # ...
      end
    end
  end