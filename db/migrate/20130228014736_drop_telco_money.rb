class DropTelcoMoney < ActiveRecord::Migration
  def up
    drop_table :telco_moneys
  end

  def down
  end
end
