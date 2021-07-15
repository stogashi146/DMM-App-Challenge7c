class UserGroupsController < ApplicationController
  before_action :ensure_correct_user,{only:[:edit,:update]}
  def ensure_correct_user
    group = UserGroup.find(params[:id])
    unless group.orner_id == current_user.id
      redirect_to user_path(current_user)
    end
  end

  def index
    @groups = UserGroup.all
    @memebers = UserGroupMember.all
    @book = Book.new
  end

  def join
    @group = UserGroup.find(params[:user_group_id])
    @group.users << current_user
    redirect_to user_groups_path
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
    @group = UserGroup.find(params[:id])
    # @join = UserGroupMember.new
  end

  def destroy
    @group = UserGroup.find(params[:id])
    @group.users.delete(current_user)
    redirect_to user_groups_path
  end
  

  private
  def group_params
    params.require(:user_group).permit(:name,:introduction,:group_image)
  end

end
