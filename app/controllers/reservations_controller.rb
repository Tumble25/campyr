class ReservationsController < ApplicationController
  # skip_before_action :authenticate_user!, only: [:index, :show]
  # before_action :set_reservation, only: [:show, :edit, :update]
  # skip_before_action :authenticate_user!, only: :index

  def new
    @reservation = Reservation.new
    authorize @reservation # authorize if user can make new campsite
  end

  def create
    @user = current_user # find the current user (this is a devise spefic method)
    @campsite = Campsite.find(params[:campsite_id])
    @reservation = Reservation.new(reservation_params) # create a new campsite

    authorize @reservation # authorize if campsite can be created by user
    @reservation.campsite = @campsite
    @reservation.user = @user # attach the user instance to the new campsite instance
    # @total price
    @reservation.save # save the newly created campsite
    redirect_to dashboard_path(@user)
  end

  def set_reservation
    @reservation = Reservation.find(params[:id])
  end

  def reservation_params
    params.require(:reservation).permit(:arrival, :departure)
  end
end
