class AddColumnProvider < ActiveRecord::Migration
  def up
    add_column :users, :provider, :string, default: "facebook"
  end

  def down
  end
end
