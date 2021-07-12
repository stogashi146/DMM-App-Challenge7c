class UserGroup < ApplicationRecord
  has_many :user_group_members
  has_many :group_users,through: :user_group_members
  attachment :group_image, destroy: false
end
