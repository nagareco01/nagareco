class RemoveDeleteFlagFromClients < ActiveRecord::Migration[5.2]
  def change
    remove_column :clients, :delete_flag, :integer
  end
end
