class Activity < ActiveRecord::Base
	belongs_to :user
	belongs_to :category
	has_many :impacts
	belongs_to :group
end
