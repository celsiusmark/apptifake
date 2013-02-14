class CreateItunesAppstores < ActiveRecord::Migration
  def change
    create_table :itunes_appstores do |t|
      t.string :media_type
      t.string :genre
      t.integer :feed_id

      t.timestamps
    end
  end
end
