class AddDeletedAtToClients < ActiveRecord::Migration[5.2]
  def change
    add_column :clients, :deleted_at, :datetime
  end
end
