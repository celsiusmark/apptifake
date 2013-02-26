class CreateDebits < ActiveRecord::Migration
  def change
    create_table :debits do |t|
      t.integer :user_id
      t.integer :iid
      t.string :store
      t.string :itunes_category
      t.string :currency
      t.string :exchange_rate
      t.float :fixed_cost
      t.float :fixed_cost_converter
      t.float :tier
      t.float :margin
      t.string :title
      t.string :category
      t.string :url_web
      t.string :email_recipient
      t.string :sender_name
      t.integer :status
      t.datetime :processed
      t.datetime :created
    end
  end
end
