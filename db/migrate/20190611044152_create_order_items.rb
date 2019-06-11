class CreateOrderItems < ActiveRecord::Migration[5.2]
  def change
    create_table :order_items do |t|
      t.integer :order_id,  null: false
      t.integer :cd_id,  null: false
      t.integer :quantity,  null: false
      t.integer :purchased_price,  null: false

      t.timestamps
    end
  end
end
