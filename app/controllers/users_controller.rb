class UsersController < ApplicationController
	def index
	@all_artists      = []
    @beatmaker      = []
    @singer   = []
    @guitarist  = []
    @pianist  = []
    @rapper  = []
    @producer  = []
    @sound_engineer  = []
    @writter  = []
    @bass_player  = []
    @drummer  = []
    User.all.each do |user|
      @all_artists << user
    end
    User.all.each do |user|
      if user.speciality_1  == "Beatmaker"
        @beatmaker << user
      elsif user.speciality_1  == "Singer"
        @singer << user
      elsif user.speciality_1  == "Guitarist"
        @guitarist << user
      elsif user.speciality_1  == "Pianist" 
        @pianist << user
      elsif user.speciality_1  == "Rapper"
        @rapper << user
      elsif user.speciality_1  == "Producer"
        @producer << user 
      elsif user.speciality_1  == "Sound engineer"
        @sound_engineer << user                      	   
      elsif user.speciality_1  == "Writter" 
        @writter << user
      elsif user.speciality_1  == "Bass player"
        @bass_player << user
      elsif user.speciality_1  == "Drummer" 
        @drummer << user
       else
                                      
      end
    end
	end

	def show
		@user = User.find(params[:id])
		@my_group = []
		@my_request = []
		Group.all.each do |group|
			if group.admin == current_user
				@my_group << group
			end
		end
		if @my_group.length > 0
			JoinGroup.all.each do |request|
				@my_group.each do |group|
					# puts "#" * 60
					# puts group
					# puts request.group
					# puts "/" * 60
					if group.id == request.group.id && request.state == false
						@my_request << request
					end
				end
			end
		end
	end

	def new
		
	end

	def create
		
	end

	def edit
		
	end

	def update
		
	end

	def destroy
		
	end
end
