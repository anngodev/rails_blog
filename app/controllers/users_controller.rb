class UsersController < ApplicationController
  def index
  	@users = User.all
  end

  def show
  	@user = User.find(params[:id])
  end

  def destroy
  	User.find(params[:id]).destroy

  	redirect_to "/users"
  end

  def new
  	@user = User.new

  end

  def create
  	# user = User.new
  	# user_params = params[:user]

  	User.create(user_params)

  	# user.first_name = user_params[:first_name]
  	# user.email = user_params[:email]
  	# user.password = user_params[:password]

  	# user.save

  	redirect_to "/"
  	end

  	def edit
  		@user = User.find(params[:id])
  	end

  	def update
  		user = User.find(params[:id])

  		user.update_attributes(user_params)

  		redirect_to :back
  	end

  	private

  	def user_params
  		params.require(:user).permit(:first_name, :email, :password)

  	end

end
