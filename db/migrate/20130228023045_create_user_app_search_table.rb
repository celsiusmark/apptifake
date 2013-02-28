class CreateUserAppSearchTable < ActiveRecord::Migration
  def change
    create_table :user_app_searches do |t|
      t.string :user_id
      t.string :type
      t.string :query
      t.datetime :created
    end
  end
end
