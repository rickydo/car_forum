class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
    	t.string		:text
    	t.belongs_to	:user
    	t.belongs_to	:thread_for_posts
	    t.timestamps
    end
    add_index :posts, :user_id
    add_index :posts, :thread_for_posts_id
  end
end
