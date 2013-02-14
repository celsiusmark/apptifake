class Survey < ActiveRecord::Base
  attr_accessible :q1, :q2, :q3, :q4, :q5, :q6, :q7, :user_id

  belongs_to :user
end
