class User < ActiveRecord::Base
	validates :first_name, :last_name, :email, :age, presence: true
	validates :age, numericality: {greater_than_or_equal_to: 10, less_than: 100}
	validates :first_name, :last_name, length: {minimum: 2}
end