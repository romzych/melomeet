class AfterSignupsController < Wicked::WizardController
     steps :personal

     def show
 		 @user = current_user
  		render_wizard
     end

   def update
      @user = current_user
      if @user.update_attributes(user_params)
        # because you only have one step, you don't need render_wizard @user
        redirect_to_finish_wizard
      else
        render_wizard
      end
    end

    private

    def user_params
      params.require(:user).permit(:first_name, :last_name, :speciality_1)
    end

    def redirect_to_finish_wizard
      redirect_to root_path
    end
end

