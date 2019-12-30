class ProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :image_url, :website
  belongs_to :product_category
end
