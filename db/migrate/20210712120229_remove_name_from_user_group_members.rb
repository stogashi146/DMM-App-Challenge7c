class RemoveNameFromUserGroupMembers < ActiveRecord::Migration[5.2]
  def change
    remove_column :user_group_members, :name, :string
    remove_column :user_group_members, :introduction, :text
    remove_column :user_group_members, :group_image_id, :string
  end
end
