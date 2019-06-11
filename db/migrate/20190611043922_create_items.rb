class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.integer :client_id,  null: false
      t.integer :cd_id,  null: false
      t.integer :quantity,  null: false

      t.timestamps
    end
  end
end
