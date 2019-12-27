class Recommendation < ApplicationRecord
  belongs_to :user
  has_many :recommendation_products
  has_many :products, through: :recommendation_products
end
