class CreateJoinGroups < ActiveRecord::Migration[5.2]
  def change
    create_table :join_groups do |t|
      t.integer :user_id
      t.integer :group_id
      t.boolean :state, :default => false
      
      t.timestamps
    end
  end
end
