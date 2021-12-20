class CreateProjects < ActiveRecord::Migration[7.0]
  def change
    create_table :projects do |t|
      t.integer :store_id
      t.string :name
      t.integer :price
      t.date :start_date
      t.date :end_date
      t.boolean :status
      t.text :intro

      t.timestamps
    end
  end
end
