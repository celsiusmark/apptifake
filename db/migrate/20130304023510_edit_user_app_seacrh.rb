class EditUserAppSeacrh < ActiveRecord::Migration
  def up
    change_column :user_app_searches, :created, :date
  end

  def down
  end
end
