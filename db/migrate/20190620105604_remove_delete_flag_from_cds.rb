class RemoveDeleteFlagFromCds < ActiveRecord::Migration[5.2]
  def change
  	remove_column :cds, :delete_flag
  end
end
