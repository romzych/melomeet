class UsersController < ApplicationController
	def index
	@all_artists      = []
    @beatmaker      = []
    @singer   = []
    @guitarist  = []
    User.all.each do |user|
      @all_artists << user
    end
    User.all.each do |user|
      if user.speciality_1  == "Beatmaker"
        @beatmaker << user
      elsif user.speciality_1  == "Singer"
        @singer << user
      else
        @guitarist << user
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
		
	end
end
