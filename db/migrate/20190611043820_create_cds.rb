class CreateCds < ActiveRecord::Migration[5.2]
  def change
    create_table :cds do |t|
      t.string :name,  null: false
      t.string :image_id
      t.text :description,  null: false
      t.integer :price,  null: false
      t.integer :stock,  null: false
      t.integer :sale_status,  null: false
      t.integer :delete_flag,  null: false,  default: "0"
      t.integer :artist_id,  null: false
      t.integer :label_id
      t.integer :genre_id,  null: false

      t.timestamps
    end
  end
end
