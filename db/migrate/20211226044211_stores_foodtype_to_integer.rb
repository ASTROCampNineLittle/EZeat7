class StoresFoodtypeToInteger < ActiveRecord::Migration[7.0]
  def change
    change_column :stores, :food_type, :integer, using: 'food_type::integer'
  end
end
