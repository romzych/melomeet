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
		#@user.avatar.purge
	end
end
