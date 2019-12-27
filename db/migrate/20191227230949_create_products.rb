class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.string :image_url
      t.string :website
      t.references :product_category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
