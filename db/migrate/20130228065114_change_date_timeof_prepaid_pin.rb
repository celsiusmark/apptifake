class ChangeDateTimeofPrepaidPin < ActiveRecord::Migration
  def up
    change_column :prepaid_pins, :loaded, :datetime, default: '0000-00-00 00:00:00'
  end

  def down
  end
end
