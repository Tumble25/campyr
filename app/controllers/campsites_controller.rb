class CampsitesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_campsite, only: [:show, :edit, :update]
  skip_before_action :authenticate_user!, only: :index

  def new
    @campsite = Campsite.new
    authorize @campsite # authorize if user can make new campsite
  end

  def create
    @user = current_user # find the current user (this is a devise spefic method)
    @campsite = Campsite.new(campsite_params) # create a new campsite
    authorize @campsite # authorize if campsite can be created by user
    @campsite.user = @user # attach the user instance to the new campsite instance
    @campsite.save # save the newly created campsite
    redirect_to campsite_path(@campsite)
  end

  def show
    @reservation = Reservation.new
    @campsite = Campsite.find(params[:id])
    authorize @campsite
  end

  def index
    if params[:name].present?
      @campsites = policy_scope(Campsite.where(name: params[:name]))
    else
      @campsites = policy_scope(Campsite) #authorize the campsites
    end
  end

  private

  def set_campsite
    @campsite = Campsite.find(params[:id])
  end

  def campsite_params
    params.require(:campsite).permit(:name, :address, :price, :photo, :user_id, :description)
  end
end
