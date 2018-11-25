module Types
  class ProductType < Types::BaseObject
    graphql_name "Product"

    field :id, ID, null: false
    field :name, String, null: false
    field :description, String, null: true
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false

    field :categories, [Types::CategoryType], null: true
  end
end
