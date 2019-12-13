class GroupsController < ApplicationController
	before_action :authenticate_user!, only: [:new]

	def index
	@all_groups= []
	@rap = []
	@rock = []
	@pop = []
	@rnb = []
	@electro = []
	Group.all.each do |group|
		@all_groups << group
	end 
	Group.all.each do |group|
		if group.spe == "Rap/Trap/Drill/Alternatif/Hip-Hop"
			@rap << group
		elsif group.spe == "Rock/Alternatif/Pop/Metal"
			@rock << group
	    elsif group.spe == "Pop"
			@pop << group
		elsif group.spe == "RnB"
			@rnb << group
		elsif group.spe == "Electro"
			@electro << group
				
		end			
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
    @group = Group.new(admin: current_user, name: params[:group_name], body: params[:group_body], spe: params[:group_spe]) 
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
