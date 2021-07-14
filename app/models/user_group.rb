class UserGroup < ApplicationRecord
  has_many :user_group_members,dependent: :destroy
  has_many :users,through: :user_group_members
  attachment :group_image, destroy: false
end
