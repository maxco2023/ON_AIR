class PagesController < ApplicationController
  def home
    @clubs = Club.all
  end

  def dashboard
    # pas besoin de la première ligne ? mettre plutôt juste @club.user = current_user ?
    @clubs = Club.where(user: current_user)
    @bookings = Booking.where(user: current_user)
  end
end
