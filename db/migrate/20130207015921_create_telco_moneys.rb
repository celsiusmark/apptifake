class CreateTelcoMoneys < ActiveRecord::Migration
  def change
    create_table :telco_moneys do |t|
      t.string :user_id
      t.string :type
      t.string :reference
      t.integer :amount
      t.datetime :expiry
      t.datetime :created

      t.timestamps
    end
  end
end
