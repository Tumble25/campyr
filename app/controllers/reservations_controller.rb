class ReservationsController < ApplicationController
  def new
    @reservation = Reservation.new
    authorize @reservation # authorize if user can make new campsite
  end

def create
    @user = current_user # find the current user (this is a devise spefic method)
    @reservation = Reservation.new # create a new campsite
    # authorize @campsite # authorize if campsite can be created by user
    # @campsite.user = @user # attach the user instance to the new campsite instance
    # @campsite.save # save the newly created campsite
    # redirect_to campsite_path(@campsite)
  end


end
