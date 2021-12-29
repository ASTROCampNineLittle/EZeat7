class CreateOpenDates < ActiveRecord::Migration[7.0]
  def change
    create_table :open_dates do |t|
      t.integer :dish_id
      t.date :ok_date
      t.boolean :is_open

      t.timestamps
    end
    add_index :open_dates, :dish_id
  end
end
