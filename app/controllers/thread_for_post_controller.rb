class ThreadForPostController < ApplicationController
	def show
		@thread = ThreadForPost.find(params[:id])
		@posts = @thread.posts
	end
end
