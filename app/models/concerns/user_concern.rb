module UserConcern
  def booked_dates(user_id)
    bookings.where(["status = :status and user_id = :user_id", { status: Booking.statuses[:validated], user_id: user_id }]).pluck(:start_date, :end_date)
  end

  def simple_format_booked_dates(user_id)
    booked_dates(user_id).deep_map(&:to_s)
  end

  def booked_dates_json_objects(user_id)
    simple_format_booked_dates(user_id).map do |dates_arr|
      {
      from: dates_arr.first,
      to: dates_arr.last
      }
    end
  end

  def flatpickr_booked_dates_object(user_id)
    {
    dateFormat: "Y-m-d",
    disable: booked_dates_json_objects(user_id)
    }
  end
end
