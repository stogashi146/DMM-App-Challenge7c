class AddIsOrnerToUserGroupMembers < ActiveRecord::Migration[5.2]
  def change
    add_column :user_group_members, :is_orner, :boolean
  end
end
