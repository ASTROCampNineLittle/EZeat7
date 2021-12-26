class StoreFoodType < ActiveRecord::Migration[7.0]
  def change
    rename_column(:stores, :type, :food_type)
  end
end
