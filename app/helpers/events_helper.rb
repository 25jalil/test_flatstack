module EventsHelper
  def schedule(event)
    event_title = event.title
    start_date = Date.parse(event.start)
    end_date = Date.parse(event.end)
    replay = event.replay
    array = [] << {title: event_title, start: start_date}
    if replay == "day"
      while start_date < end_date do
        start_date += 1.days
        hash = {title: event_title, start: start_date}
        array << hash
      end
    elsif replay == "week"
      while start_date < end_date do
        start_date += 1.weeks
        hash = {title: event_title, start: start_date}
        array << hash
      end
    elsif replay == "month"
      while start_date < end_date do
        start_date += 1.month
        hash = {title: event_title, start: start_date}
        array << hash
      end
    elsif replay == "year"
      while start_date < end_date do
        start_date += 1.years
        hash = {title: event_title, start: start_date}
        array << hash
      end
    else
      hash = {title: event_title, start: start_date}
      array << hash
    end
    array
  end
end
