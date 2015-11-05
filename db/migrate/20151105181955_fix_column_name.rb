class FixColumnName < ActiveRecord::Migration
  def change
    change_table :movies do |t|
      t.rename :subscription_id, :subscription
      t.rename :Ytube, :youtube
    end
  end
end
