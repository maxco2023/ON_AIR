class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    if params[:query].present?
      @clubs = Club.search_by_name_and_address_and_category(params[:query])
    else
      @clubs = Club.all
    end
    @markers = @clubs.geocoded.map do |club|
      {
        lat: club.latitude,
        lng: club.longitude,
        info_window_html: render_to_string(partial: "info_window", locals: {club: club}),
      }
    end
  end

  def dashboard
    # pas besoin de la première ligne ? mettre plutôt juste @club.user = current_user ?
    @clubs = Club.where(user: current_user)
    @bookings = Booking.where(user: current_user)
  end
end
