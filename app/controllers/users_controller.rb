class UsersController < ApplicationController
   	before_action :set_user, only: [:edit, :update, :show]
    def new
    	@user = User.new
    end
    def create
		@user = User.new(user_params)
		if @user.save
			flash[:success] = "Welcome to N-AIR Shop, #{@user.firstname}"
			session[:user_id] = @user.id
			redirect_to root_path
		else
			render 'new'
		end
	end


    private
    def set_user
    	if User.exists? id: params[:id] 
			@user = User.find(params[:id])
		else
			redirect_to root_path
			flash[:danger] = "User with ID = #{params[:id]} is not exist"
		end		
    end

    def user_params
		params.require(:user).permit(:firstname, :lastname, :email, :password, :phone, :address, :gender)
	end
end