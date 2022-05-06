class ProductsController < ApplicationController
	def index
		@products = Product.all
		@productvarients = ProductVarient.all
	end

	def new
    	@product = Product.new
    	@product.product_varients.build
  	end

  	def create
    	@product = Product.new(product_params)
    	if @product.save
      		redirect_to products_path
    	else
      		render :new
    	end
  	end

  	def product_params
    	params.require(:product).permit(:name, :description, product_varients_attributes: [:color, :size, :id])
  	end
end
