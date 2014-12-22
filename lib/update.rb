module UpdateRecords
	def update_post_count
		current_user.number_of_posts += 1
	end
end