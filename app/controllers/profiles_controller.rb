class ProfilesController < ApplicationController
  layout "feed"
  
  before_filter :authenticate_user!

  def show
    @profile = Profile.find params[:id]
  end

  def edit
    
  end

  def update
    
  end
end
