class AddOrnerToUserGroupMember < ActiveRecord::Migration[5.2]
  def change
    add_column :user_group_members, :orner_id, :integer
  end
end
