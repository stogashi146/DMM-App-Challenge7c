class UserGroupsController < ApplicationController
  def index
    @groups = UserGroup.all
    @book = Book.new
  end

  def new
    @group = UserGroup.new

  end
  def create
    @group = UserGroup.new(group_params)
    current_user.user_group_members.user_id = current_user.id
    current_user.user_group_members.is_orner = true
    user_group.user_group_members.group_id = @group.id
    @group.save
    redirect_to user_groups_path
  end

  def edit
  end

  private
  def group_params
    params.require(:user_group).permit(:name,:introduction,:group_image_id)
  end
end
