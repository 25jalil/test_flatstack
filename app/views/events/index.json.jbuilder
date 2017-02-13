json.array!(@events) do |event|
  json.extract! event, :email
  json.start event.start_date
  json.url event_url(event, format: :html)
end
