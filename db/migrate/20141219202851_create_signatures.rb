class CreateSignatures < ActiveRecord::Migration
  def change
    create_table :signatures do |t|
    	t.belongs_to		:user
    	t.string			:content
      	t.timestamps
    end
	  add_index :signatures, :user_id
  end
end
