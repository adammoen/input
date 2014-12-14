class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
	has_many :categories
	has_many :activities
	has_many :joinings	
	has_many :groups, through: :joinings
	
	accepts_nested_attributes_for :joinings, :allow_destroy => true
	def full_name
		"#{first_name} #{last_name}"
	end	
end
