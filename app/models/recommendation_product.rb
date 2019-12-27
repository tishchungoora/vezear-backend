class RecommendationProduct < ApplicationRecord
  belongs_to :recommendation
  belongs_to :product
end
