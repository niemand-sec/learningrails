json.array!(@version_servicios) do |version_servicio|
  json.extract! version_servicio, :id, :version, :fechaInicio, :fechaFin
  json.url version_servicio_url(version_servicio, format: :json)
end
