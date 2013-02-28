class CreatePrepaidPinTable < ActiveRecord::Migration
  def change
    create_table :prepaid_pins do |t|
      t.integer :user_id
      t.string :pin_type
      t.string :pin_name
      t.string :pin_code
      t.integer :denomination
      t.string :distributor
      t.datetime :loaded
      t.date :expiry
      t.datetime :created
    end
  end
end


