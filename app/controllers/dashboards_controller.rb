class DashboardsController < ApplicationController
  skip_after_action :verify_authorized, only: [:show]
  def show
    @reservations = Reservation.find(current_user.reservation_ids)
    @campsite = Campsite.where(user: current_user)
    @newres = Reservation.where(campsite: @campsite.ids)
  end

  def set_reservation
    @reservation = Reservation.find(params[:id])
  end
end
