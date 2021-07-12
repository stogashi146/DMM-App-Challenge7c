class AddNameToUserGroupMembers < ActiveRecord::Migration[5.2]
  def change
    add_column :user_group_members, :name, :string
    add_column :user_group_members, :introduction, :text
    add_column :user_group_members, :group_image_id, :string
  end
end
