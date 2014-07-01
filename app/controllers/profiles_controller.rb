class ProfilesController < ApplicationController
  layout "feed"
  
  before_filter :authenticate_user!

  def show
    @profile = Profile.find params[:id]
  end

  def edit
    if current_user.profile_id.to_s != params[:id]
      redirect_to root_path, alert: 'Not your profile'
    else
      @profile = current_user.profile
    end
  end

  def update
    if current_user.profile_id.to_s != params[:id]
      redirect_to root_path, alert: 'Not your profile'
    else
      @profile = current_user.profile
      if @profile.update_attributes profile_params
        redirect_to profile_path(@profile)
      else
        render :edit
      end
    end
  end

  private
  def profile_params
    params.require(:profile).permit(
      :id,
      user_attributes: [:id, :name, :email, :gender]
      )
  end
end
