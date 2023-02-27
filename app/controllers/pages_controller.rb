class PagesController < ApplicationController
  def home
    @clubs = Club.all
  end

  def dashboard
    @clubs = Club.all
    @bookings = Booking.all
  end

  def club_params
    params.require(:clubs).permit(:name, :description, :phone_number, :type, :capacity, :hour_price, :user_id)
  end
end
