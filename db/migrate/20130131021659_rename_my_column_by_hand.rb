class RenameMyColumnByHand < ActiveRecord::Migration
  def up
    rename_column :users, :fb_uid, :uid_fb
  end

  def down
    rename_column :users, :uid_fb, :fb_uid
  end
end
