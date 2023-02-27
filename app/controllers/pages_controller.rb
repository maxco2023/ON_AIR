class PagesController < ApplicationController
  def home
    @clubs = Club.all
  end

  def dashboard
    @user = User.find(params[user_id])
    @club.user = @user
    @clubs = Club.where(:user_id, @user)
    @booking.user = @user
    @bookings = Booking.where(:user_id, @user)
  end
end
