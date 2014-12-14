class Group < ActiveRecord::Base
  has_many :joinings
  has_many :users, through: :joinings	
	has_many :impacts
	
	accepts_nested_attributes_for :users 
end
