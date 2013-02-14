class CreateDebits < ActiveRecord::Migration
  def change
    create_table :debits do |t|
      t.string :user_id
      t.string :iid
      t.string :store
      t.string :type
      t.string :currency
      t.string :exchange_rate
      t.float :fixed_cost
      t.float :fixed_cost_converted
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

      t.timestamps
    end
  end
end
