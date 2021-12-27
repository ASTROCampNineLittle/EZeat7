class CreateDishes < ActiveRecord::Migration[7.0]
  def change
    create_table :dishes do |t|
      t.integer :store_id
      t.string :name
      t.integer :price
      t.date :start_date
      t.date :end_date
      t.boolean :status, default: false
      t.text :intro

      t.timestamps
    end
  end
end
