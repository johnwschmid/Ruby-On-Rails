class UsersController < ApplicationController
	def index
		@users = User.all
		render json: @users
	end
	def new
	end
	def create
		User.create(name: params[:name])
		redirect_to '/users'
	end
	def find
		render json: User.find(params[:id])
	end
	def edit
		@user = User.find(params[:id])
	end
	def total
		@count = User.count
	end
end