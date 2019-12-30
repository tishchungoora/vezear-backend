class BusinessCategorySerializer < ActiveModel::Serializer
  attributes :id, :name, :parent_id
end
