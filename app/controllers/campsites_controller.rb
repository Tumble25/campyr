class CampsitesController < ApplicationController
  before_action :set_campsite, only: [:show, :edit, :update]
  def new
    @campsite = Campsite.new
  end

  def create
    @user = current_user # find the current user (this is a devise spefic method)
    @campsite = Campsite.new(campsite_params) # create a new campsite
    @campsite.user = @user # attach the user instance to the new campsite instance
    @campsite.save # save the newly created campsite
  end

  private

  def set_campsite
    @campsite = Campsite.find(params[:id])
  end

  def campsite_params
    params.require(:campsite).permit(:name, :address, :price, :photo, :user_id, :description)
  end
end
