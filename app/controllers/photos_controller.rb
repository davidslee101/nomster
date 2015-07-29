class PhotosController < ApplicationController
	before_action :authnticate_user!
	def create
		@place = Place.find(params[:place_id])
		@place.photos.creat(photo_params.merge(:user  => current_user))
		redirect_to place_path(@place)
	end

	private

	def photo_params
		params.require(:comment).permit(:caption)
	end
end
