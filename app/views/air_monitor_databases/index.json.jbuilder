json.array!(@air_monitor_databases) do |air_monitor_database|
  json.extract! air_monitor_database, :id, :pm10data, :noadata, :fieldengineer
  json.url air_monitor_database_url(air_monitor_database, format: :json)
end
