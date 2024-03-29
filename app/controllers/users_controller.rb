class UsersController < ApplicationController

	def index 
		render json: User.all
	end

	def create
	  user = User.create(user_params)
	  if user.save
	  	render json: user
	  else
	  	render json: user.errors.full_messages
	  end 
	end


	private

	def user_params
		params.require(:user).permit(:name, :email)
	end
end