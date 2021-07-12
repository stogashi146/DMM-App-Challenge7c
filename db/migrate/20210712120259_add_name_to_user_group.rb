class AddNameToUserGroup < ActiveRecord::Migration[5.2]
  def change
    add_column :user_groups, :name, :string
    add_column :user_groups, :introduction, :text
    add_column :user_groups, :group_image_id, :string
  end
end
