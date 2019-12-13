class GroupsController < ApplicationController
	before_action :authenticate_user!, only: [:new]

	def index
	@all_group = []
	Group.all.each do |group|
		@all_group << group
	end 

	end

	def show
		@group = Group.find(params[:id])
		@members = []
		@members_request = []
		JoinGroup.all.each do |member|
			if member.group.id == @group.id && member.state == true
				@members << member.user
			end
			if member.group.id == @group.id
				@members_request << member.user
			end
		end
	end

	def new
		@group = Group.new
	end

	def create
    @group = Group.new(admin: current_user, name: params[:group_name], body: params[:group_body]) 
    if @group.save # essaie de sauvegarder en base @group
      redirect_to group_path(@group.id)
    else
			render 'groups/new', to: 'groups#new'
			puts "#" * 60
			puts @group.errors.messages
			puts "#" * 60
    end 

  end

	def edit
		
	end

	def update
		
	end

	def destroy
		
	end
end
