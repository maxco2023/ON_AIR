class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    if params[:query].present?
      @clubs = Club.where(name: params[:query])
    else
      @clubs = Club.all
    end
  end

  def dashboard
    # pas besoin de la première ligne ? mettre plutôt juste @club.user = current_user ?
    @clubs = Club.where(user: current_user)
    @bookings = Booking.where(user: current_user)
  end
end
