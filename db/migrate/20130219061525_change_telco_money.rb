class ChangeTelcoMoney < ActiveRecord::Migration
  def up
    rename_column :telco_moneys, :type, :gateway
    remove_column :telco_moneys, :updated_at
    remove_column :telco_moneys, :created_at
    change_column :telco_moneys, :user_id, :integer
  end

  def down
  end
end
