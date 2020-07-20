class UsersController < ApplicationController
	def show
		@user =current_user
	end

	def edit
		@user = current_user
	end

	def update
		@user = current_user
	  if @user.update(user_params)
		redirect_to user_path
	  else render "edit"
	  end
	end

	def unsubscribed
	end

	def withdraw
	end




	private
	def users_params
		params.require(:user).permit(:email, :family_name, :family_name_kana,
		:first_name,:first_name_kane,:phone_number, :post_code,
	    :address)
	end
end
