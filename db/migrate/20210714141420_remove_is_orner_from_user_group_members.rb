class RemoveIsOrnerFromUserGroupMembers < ActiveRecord::Migration[5.2]
  def change
    remove_column :user_group_members, :is_orner, :boolean
  end
end
