json.array!(@measurements) do |measurement|
  json.extract! measurement, :id, :val, :name, :position, :ts, :inserted
  json.url measurement_url(measurement, format: :json)
end
