json.array! @events_all do |event|
  json.title event[:title]
  json.start event[:start].to_time.strftime('%Y-%m-%dT%H:%M:%S')
end
