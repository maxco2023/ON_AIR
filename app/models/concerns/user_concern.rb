module UserConcern
  def booked_dates
    bookings.where(status: "validated").pluck(:start_date, :end_date)
  end

  def simple_format_booked_dates
    booked_dates.deep_map(&:to_s)
  end

  def booked_dates_json_objects
    simple_format_booked_dates.map do |dates_arr|
      {
      from: dates_arr.first,
      to: dates_arr.last
      }
    end
  end

  def flatpickr_booked_dates_object
    {
    dateFormat: "Y-m-d",
    disable: booked_dates_json_objects
    }
  end
end
