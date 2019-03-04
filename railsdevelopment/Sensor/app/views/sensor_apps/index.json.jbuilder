json.array!(@sensor_apps) do |sensor_app|
  json.extract! sensor_app, :id, :title
  json.url sensor_app_url(sensor_app, format: :json)
end
