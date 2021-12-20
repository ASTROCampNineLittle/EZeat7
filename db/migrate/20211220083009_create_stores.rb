class CreateStores < ActiveRecord::Migration[7.0]
  def change
    create_table :stores do |t|
      t.integer :restaurant_id
      t.string :name
      t.string :type
      t.string :tel
      t.string :email
      t.text :intro

      t.timestamps
    end
  end
end
