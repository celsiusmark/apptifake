class AddColumnToUsers < ActiveRecord::Migration
  def change
    add_column :users, :appstore_location, :string, default: "ph"
    add_column :users, :ios_device, :string
    add_column :users, :number_notify, :string
    add_column :users, :number_globe, :string
    add_column :users, :number_smart, :string
    add_column :users, :last_access_time, :datetime
    add_column :users, :last_access_page, :string
    add_column :users, :created, :datetime
  end
end
