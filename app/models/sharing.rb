class Sharing < ActiveRecord::Base
  belongs_to :user
  belongs_to :goal
end
