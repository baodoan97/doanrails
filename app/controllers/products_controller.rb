class ProductsController < ApplicationController
    before_action :set_product , only: [:edit,:update]

    def new
    @product = Product.new
    end
    def create
    	# debugger
		paPRODUCT = {
        	 "name" => product_params[:name],
        	 "price" => product_params[:price],
        	 "quantity" => product_params[:quantity],
        	 "description" => product_params[:description],
        	 "size" => product_params[:size].to_i
         }
		  @product = Product.new
		  @product.category = Category.find(product_params[:category].to_i)
             # debugger
        if params[:product][:images] != nil 
       @product.images.attach(params[:product][:images])
        end

        if @product.save
	        flash[:success] = "Product was created successfully"
	       
			redirect_to task_path(@product)
			# debugger
		else
			render 'new'
		end
	end

	def edit
		
	end

    def update
       paPRODUCT = {
        	 "name" => product_params[:name],
        	 "price" => product_params[:price],
        	 "quantity" => product_params[:quantity],
        	 "description" => product_params[:description],
        	 "size" => product_params[:size].to_i
         }
         @product.category = Category.find(product_params[:category].to_i)
      	if params[:product][:images] != nil 
       		@product.images.attach(params[:product][:images])
        end
		if @product.update(paPRODUCT)       	
			flash[:success] = "Product was updated"
			# redirect_to task_path(@task)
		else
			render 'edit'
		end
    end

	def destroyimage
		
		   if params[:product] 
            @product = Product.find(params[:product])
             @product.images[params[:images].to_i].destroy
		   end
		   redirect_to edit_product_path(@product.id.to_i)
		
	end
    	private

	def product_params     
		params.require(:product).permit(:name, :price, :quantity, :description, :size, :category)
	end
    
    def set_product
        @product = Product.find(params[:id])
    end 
>>>>>>> 113dd188fe452c15e4f30fe3821dc7ceed5d67b5
end