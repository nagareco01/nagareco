class AddIsDeletedToCds < ActiveRecord::Migration[5.2]
  def change
  	add_column :cds, :is_deleted, :boolean, :default => false
  end
end
