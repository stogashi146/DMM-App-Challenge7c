class UserGroupsController < ApplicationController
  before_action :ensure_correct_user,{only:[:edit,:update]}
  def ensure_correct_user
    group = UserGroup.find(params[:id])
    unless current_user.user_groups.find_by("is_orner")
      redirect_to user_path(current_user)
    end
  end

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
    @group.orner_id = current_user.id
    member = @group.user_group_members.new
    member.user_id = current_user.id
    member.user_group_id = @group.id
    @group.save
    member.save
    redirect_to user_groups_path
  end
  def edit
    @member = UserGroup.find(params[:id])
  end
  def update
    @member = UserGroup.find(params[:id])
    @member.update(group_params)
    redirect_to user_groups_path
  end

  def show
    @book = Book.new
    @groups = UserGroup.find(params[:id])
  end

  private
  def group_params
    params.require(:user_group).permit(:name,:introduction,:group_image)
  end
end
