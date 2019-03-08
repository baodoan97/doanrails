class ProductsController < ApplicationController
    before_action :set_product
    def index

    end

    def show

    end


    private
    def set_product
		if Product.exists? id: params[:id] 
            @product = Product.find(params[:id])
        else
            redirect_to root_path
            flash[:danger] = "Product is not exist"
        end     
	end
	def product_params
		params.require(:product).permit(:name, :price, :quantity, :description, :size, :cat_id)
	end
end