class CreateOffers < ActiveRecord::Migration[7.0]
  def change
    create_table :offers do |t|
      t.references :open_date, null: false, foreign_key: true
      t.time :ok_time
      t.integer :capacity

      t.timestamps
    end
  end
end
