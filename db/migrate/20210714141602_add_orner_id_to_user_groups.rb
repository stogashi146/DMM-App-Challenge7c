class AddOrnerIdToUserGroups < ActiveRecord::Migration[5.2]
  def change
    add_column :user_groups, :orner_id, :integer
  end
end
