class AdjustColumnName < ActiveRecord::Migration
  def change
    rename_column :users, :subscription_id, :subscription
  end
end
