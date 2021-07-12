class CreateUserGroupMembers < ActiveRecord::Migration[5.2]
  def change
    create_table :user_group_members do |t|
      t.integer :user_id
      t.integer :user_group_id

      t.timestamps
    end
  end
end
