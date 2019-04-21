class CreateRewards < ActiveRecord::Migration[5.2]
  def change
    create_table :rewards do |t|
    	t.string :name
    	t.integer :amount
    	t.string :image
    	t.integer :user_id
      t.timestamps
    end
  end
end
