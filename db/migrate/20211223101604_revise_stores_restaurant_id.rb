class ReviseStoresRestaurantId < ActiveRecord::Migration[7.0]
  def change
    rename_column(:stores, :restaurant_id, :company_id)
  end
end
