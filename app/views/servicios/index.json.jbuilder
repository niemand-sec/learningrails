json.array!(@servicios) do |servicio|
  json.extract! servicio, :id, :nombre, :descipcion
  json.url servicio_url(servicio, format: :json)
end
