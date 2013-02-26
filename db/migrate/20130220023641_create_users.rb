class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :uid_key
      t.string :uid_fb
      t.string :full_name
      t.string :first_name
      t.string :bday
      t.string :gender
      t.string :email
      t.string :location
      t.string :appstore_location
      t.string :ios_device
      t.string :number_notify
      t.string :number_globe
      t.string :number_smart
      t.datetime :last_access_time
      t.string :last_access_page
      t.datetime :created
    end
  end
end
