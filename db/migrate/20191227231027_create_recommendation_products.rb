class CreateRecommendationProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :recommendation_products do |t|
      t.references :recommendation, null: false, foreign_key: true
      t.references :product, null: false, foreign_key: true

      t.timestamps
    end
  end
end
