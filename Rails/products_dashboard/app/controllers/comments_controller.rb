class CommentsController < ApplicationController
	def comments
		@comment = Comment.all
	end
	def create
		Comment.create(comm_params)
		redirect_to :back
	end
	private 
		def comm_params
			params.permit(:comment, :product_id)
		end
end