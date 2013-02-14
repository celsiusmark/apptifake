class CreateSurveys < ActiveRecord::Migration
  def change
    create_table :surveys do |t|
      t.string :user_id
      t.string :q1
      t.string :q2
      t.string :q3
      t.string :q4
      t.string :q5
      t.string :q6
      t.string :q7

      t.timestamps
    end
  end
end
