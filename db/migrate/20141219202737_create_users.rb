class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
    	t.string 		:username
    	t.string		:first_name
    	t.string		:last_name
    	t.string		:city
    	t.string		:state
    	t.string		:email
    	t.integer		:number_of_posts
    	t.string		:clearance, :default => "regular"
      t.timestamps
    end
  end
end
