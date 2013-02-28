class CreateTelcoMoneys < ActiveRecord::Migration
  def change
    create_table :telco_moneys do |t|
      t.integer :user_id
      t.string :gateway
      t.string :reference
      t.integer :amount
      t.datetime :expiry
      t.datetime :created
    end
  end
end

