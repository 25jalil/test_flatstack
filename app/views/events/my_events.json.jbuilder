json.array! @events_all do |event|
  json.id event[:id]
  json.title event[:title]
  json.start event[:start].to_time.strftime('%Y-%m-%dT%H:%M:%S')
  json.url edit_event_path(event)
end

