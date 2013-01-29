class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :provider
      t.string :fb_uid
      t.string :full_name
      t.string :first_name
      t.string :email
      t.string :gender
      t.string :bday
      t.string :location

      t.timestamps
    end
  end
end
