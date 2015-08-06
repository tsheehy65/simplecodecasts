class ProfilesController < ApplicationController

   def new 
       # Adds new user, by fillout their own user profile
       @user = User.find(params[:user_id])
       @profile = @user.build_profile
   end
   
   def create 
       @user = User.find(params[:user_id])
       @profile = @user.build_profile(profile_params)
       if @profile.save
           flash[:success] = "Profile Updated!"
           redirect_to user_path( params[:user_id])
       else
           flash[:failure] = "Profile update failed"
           render action: :new
       end
   end
   
   private
   def profile_params
       param.require(:profile).permit(:first_name, :last_name, :job_title, :phone_number, :contact_email, :description)
   end
end