class CreateItunesAppstores < ActiveRecord::Migration
  def change
    create_table :itunes_appstores do |t|
      t.string :media
      t.string :genre
      t.integer :feed_item
      t.timestamp :created
    end
  end
end
