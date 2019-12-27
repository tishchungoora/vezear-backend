class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :business_email
      t.string :password_digest
      t.string :first_name

      t.timestamps
    end
  end
end
