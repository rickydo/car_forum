class ThreadForPostController < ApplicationController
	def show
		@thread = ThreadForPost.find(params[:id])
	end
end
