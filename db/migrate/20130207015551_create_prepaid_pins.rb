class CreatePrepaidPins < ActiveRecord::Migration
  def change
    create_table :prepaid_pins do |t|
      t.string :user_id
      t.string :pin_type
      t.string :pin_name
      t.string :pin_code
      t.integer :denomination
      t.string :distributor
      t.datetime :loaded
      t.date :expiry
      t.datetime :created

      t.timestamps
    end
  end
end
