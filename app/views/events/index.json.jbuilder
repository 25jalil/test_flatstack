json.array! @events_all do |event|
  json.id event[:id]
  json.title event[:title]
  json.start event[:start].to_time.strftime('%Y-%m-%dT%H:%M:%S')
  if signed_in?
    if event[:user_id] == current_user.id
      json.url edit_event_path(event)
    else
      json.url event_path(event)
    end
  else
    json.url event_path(event)
  end
end

