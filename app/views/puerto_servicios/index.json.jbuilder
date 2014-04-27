json.array!(@puerto_servicios) do |puerto_servicio|
  json.extract! puerto_servicio, :id
  json.url puerto_servicio_url(puerto_servicio, format: :json)
end
