class CreateGroups < ActiveRecord::Migration[5.2]
  def change
    create_table :groups do |t|
      t.integer :admin_id
      t.string :name
      t.string :group_spe
      t.text :body
      t.timestamps
    end
  end
end
