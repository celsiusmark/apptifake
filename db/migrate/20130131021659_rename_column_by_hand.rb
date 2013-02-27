class RenameColumnByHand < ActiveRecord::Migration
  def up
    rename_column :users, :fb_uid, :uid_fb
  end

  def down
  end
end
