class ChangeDateTimeofPrepaidPin < ActiveRecord::Migration
  def up
    change_column :prepaid_pins, :loaded, :datetime, default: '2009-01-01 00:00:00'
  end

  def down
  end
end

