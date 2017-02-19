json.array! @events_all do |event|
  json.id 1
  json.title event.title
  json.start event.start.strftime('%Y-%m-%dT%H:%M:%S')
  json.end event.end.to_time.strftime('%Y-%m-%dT%H:%M:%S')
  json.update_url event_path(event, method: :patch)
  json.edit_url edit_event_path(event)
end
