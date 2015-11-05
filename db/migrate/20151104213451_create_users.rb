class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email
      t.string :f_name
      t.string :l_name
      t.integer :c_number
      t.string :city
      t.string :state
      t.string :street_1
      t.string :street_2
      t.integer :subscription_id
      t.string :password_digest

      t.timestamps null: false
    end
  end
end
