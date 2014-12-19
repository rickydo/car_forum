class CreateThreadForPosts < ActiveRecord::Migration
  def change
    create_table :thread_for_posts do |t|

      t.timestamps
    end
  end
end
