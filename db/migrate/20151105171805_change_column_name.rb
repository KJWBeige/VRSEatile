class ChangeColumnName < ActiveRecord::Migration
    def change
      change_table :movies do |t|
        t.rename :subscription_id, :subscription
        t.rename :Ytube, :youtube
      end

    def change
      rename_column :users, :subscription_id, :subscription
    end
end
