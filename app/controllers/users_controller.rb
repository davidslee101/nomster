class UsersController < ApplicationController
	def show
		@user = User.find(params[:id])
		@place = Place
	end

end
