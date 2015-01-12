class CategoryController < ApplicationController
	def show
		@category = Category.find(params[:id])
		@threads = @category.thread_for_posts
	end
end
