class CreateThreadForPosts < ActiveRecord::Migration
  def change
    create_table :thread_for_posts do |t|
    	t.string		:subject
    	t.string		:text
    	t.belongs_to	:category_id
    	t.boolean		:stickied, :default => false
      	t.timestamps
    end
  end
  add_index :thread_for_posts, :category_id
end
