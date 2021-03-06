class User < ActiveRecord::Base
	has_many :posts
	has_many :owners
	has_many :messages
	has_many :blogs, through: :owners
	has_many :comments, as: :commentable

	validates :name, :email, presence: true
end