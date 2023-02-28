class BookingsController < ApplicationController
  before_action :set_club, only: %i[new create]
  before_action :set_booking, only: %i[destroy accepted!]

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.club = @club
    @booking.user = current_user
    if @booking.save
      redirect_to dashboard_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @booking.destroy
    redirect_to dashboard_path
  end

  def accepted!
    @booking.accepted = true
    @booking.save
    redirect_to dashboard_path
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :accepted, :club_id)
  end

  def set_club
    @club = Club.find(params[:club_id])
  end

  def set_booking
    @booking = Booking.find(params[:id])
  end
end
