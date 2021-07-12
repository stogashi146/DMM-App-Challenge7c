class RemoveOrnerFromUserGroupMembers < ActiveRecord::Migration[5.2]
  def change
    remove_column :user_group_members, :orner_id, :integer
  end
end
