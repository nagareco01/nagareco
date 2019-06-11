class CreateAddresses < ActiveRecord::Migration[5.2]
  def change
    create_table :addresses do |t|
      t.string :last_name,  null: false
      t.string :first_name,  null: false
      t.string :sub_post_code,  null: false
      t.string :sub_address,  null: false
      t.integer :client_id,  null: false

      t.timestamps
    end
  end
end
