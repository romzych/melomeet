class JoinGroupsController < ApplicationController
	def create
		g = Group.find(params[:id])
		@join_group = JoinGroup.new(user: current_user, group: g)
		if @join_group.save
			redirect_to root_path
		else
			redirect_to :back
			puts "#" * 60
			puts @group.errors.messages
			puts "#" * 60
		end
  end

  def index
  end

  def new
  end

  def edit
  end

  def show
  end

  def update
  end

  def destroy
  end
end
