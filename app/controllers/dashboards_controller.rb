class DashboardsController < ApplicationController
  skip_after_action :verify_authorized, only: [:show]
  def show
    @reservations = Reservation.find(current_user.reservation_ids)
    # @campsite = Campsite.find(params[:campsite_id])
  end

  def set_reservation
    @reservation = Reservation.find(params[:id])
  end
end
