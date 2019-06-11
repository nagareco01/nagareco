class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.integer :client_id,  null: false
      t.integer :payment,  null: false
      t.integer :shipment_status,  null: false
      t.integer :total_price,  null: false
      t.string :shipping_name,  null: false
      t.string :shipping_post_code,  null: false
      t.string :shipping_address,  null: false

      t.timestamps
    end
  end
end
