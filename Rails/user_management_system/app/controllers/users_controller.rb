class UsersController < ApplicationController
	def index
		@user = User.all
	end

	def new
		@user = User.new
	end

	def create
		@user = User.new user_params

		if @user.save
			flash[:notice] = 'Successfully Saved New User!'
			redirect_to '/users/index'
		else
			flash[:error] = @user.errors.full_messages
			redirect_to '/users/new'
		end
	end

	def edit
		@user = User.find params[:id]
	end

	def update
		@user = User.find params[:id]

		if @user.update_attributes user_params
			flash[:notice] = 'Successfully Updated User!'
			redirect_to '/users/index/'
		else
			flash[:error] = @user.errors.full_messages
			redirect_to '/users/edit'
		end
	end

	def show
		@user = User.find params[:id]
	end

	def delete
		if User.delete(params[:id])
			flash[:notice] = 'Successfully Deleted User!'
			redirect_to '/users/index'
		else
			flash[:error] = @user.errors.full_messages
			redirect_to '/users/index'
		end
	end

	private 
		def user_params
			params.require(:user).permit(:first_name, :last_name, :email, :password)
		end
end