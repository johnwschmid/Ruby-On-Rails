class ProductsController < ApplicationController
	def index
		@product = Product.all
	end
	def new
		@product = Product.new
	end

	def create
		if @product = Product.create(prod_params)
			flash[:notice] = 'Added New Product!'
			redirect_to '/products/index'
		else
			flash[:error] = @user.errors.full_messages
			redirect_to '/products/new'
		end
	end

	def show
		@product = Product.find(params[:id])
		@comment = Comment.where(product_id: @product.id)
	end

	def edit
		@product = Product.find(params[:id])
	end

	def update
		@product = Product.find(params[:id])

		if @product.update_attributes prod_params
			flash[:notice] = 'Updated Product!'
			redirect_to '/products/index'
		else
			flash[:error] = @user.errors.full_messages
			redirect_to '/products/edit'
		end
	end

	def delete
		if @product = Product.find(params[:id]).destroy
			flash[:notice] = 'Deleted Product!'
			redirect_to '/products/index'
		else
			flash[:error] = @user.errors.full_messages
			redirect_to '/products/index'
		end
	end

	private 
		def prod_params
			params.require(:product).permit(:name, :description, :pricing, :category_id)
		end
end