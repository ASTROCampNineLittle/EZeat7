class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.integer :user_id
      t.integer :reserve_id
      t.string :name
      t.string :tel
      t.string :email
      t.string :ItemDesc
      t.date :reserve_date
      t.time :reserve_time
      t.integer :use_status
      t.integer :order_status
      t.date :Paytime
      t.string :MerchanOrderNo
      t.integer :TradeNo
      t.integer :Amt
      t.integer :card4No

      t.timestamps
    end
  end
end
