class CreateThreadForPosts < ActiveRecord::Migration
  def change
    create_table :thread_for_posts do |t|
    	t.string		   :subject
    	t.string		   :text
    	t.belongs_to	 :category
      t.belongs_to   :user
    	t.boolean		:stickied, :default => false
      t.timestamps
    end
      add_index :thread_for_posts, :category_id
      add_index :thread_for_posts, :user_id
  end
end
