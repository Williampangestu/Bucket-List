class Goal < ActiveRecord::Base
  has_many :sharings
  has_many :users, :through => :sharings
end
