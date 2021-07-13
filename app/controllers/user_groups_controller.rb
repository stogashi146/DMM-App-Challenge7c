class UserGroupsController < ApplicationController
  def index
    @groups = UserGroup.all
    @memebers = UserGroupMember.all
    @book = Book.new
  end

  def new
    @group = UserGroup.new
  end

  def create
    @group = UserGroup.new(group_params)
    member = @group.user_group_members.new
    member.user_id = current_user.id
    member.user_group_id = @group.id
    member.is_orner = true
    # current_user.user_group_members.user_id = current_user.id
    # current_user.user_group_members.is_orner = true
    # user_group.user_group_members.group_id = @group.id
    @group.save
    member.save

    redirect_to user_groups_path
  end

  def edit
    @member = UserGroup.find(params[:id])
  end
  def update
    @member.update(group_params)
    redirect_to groups_path
  end

  private
  def group_params
    params.require(:user_group).permit(:name,:introduction,:group_image)
  end
end
