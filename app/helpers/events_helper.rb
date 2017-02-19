module EventsHelper
  def schedule(event)
    start_date = Date.parse(event.start)
    end_date = Date.parse(event.end)
    replay = event.replay
    array = Array.new(1){start_date}
    if replay == "day"
      while start_date < end_date do
        start_date += 1.days
        array << start_date.to_s
      end
    elsif replay == "week"
      while start_date < end_date do
        start_date += 1.weeks
        array << start_date.to_s
      end
    elsif replay == "month"
      while start_date < end_date do
        start_date += 1.month
        array << start_date.to_s
      end
    elsif replay == "year"
      while start_date < end_date do
        start_date += 1.years
        array << start_date.to_s
      end
    else
      array << start_date
    end
    array
  end
end
