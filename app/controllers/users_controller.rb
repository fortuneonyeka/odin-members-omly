# class UsersController < ApplicationController
#   def sign_up
#     @user = User.new
#   end

#   def create
#     @user = User.new(user_params)
#     if @user.save
#       redirect_to root_path, notice: "User successfully created"
#     else
#       render :new, alert: "user cant be created"
#     end
#   end

#   private

#   def user_params
#     params.require(:user).permit(:firstname, :lastname, :email, :password)
#   end
# end
