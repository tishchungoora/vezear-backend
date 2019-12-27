class AddAncestryToBusinessCategories < ActiveRecord::Migration[6.0]
  def change
    add_column :business_categories, :ancestry, :string
    add_index :business_categories, :ancestry
  end
end
