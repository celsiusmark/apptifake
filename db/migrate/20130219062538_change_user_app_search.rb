class ChangeUserAppSearch < ActiveRecord::Migration
  def up
    rename_column :user_app_searches, :type, :itunes_category
    remove_column :user_app_searches, :updated_at
    remove_column :user_app_searches, :created_at
    change_column :user_app_searches, :user_id, :integer
  end

  def down
  end
end
