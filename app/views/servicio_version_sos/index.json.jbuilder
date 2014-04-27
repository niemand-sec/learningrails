json.array!(@servicio_version_sos) do |servicio_version_so|
  json.extract! servicio_version_so, :id
  json.url servicio_version_so_url(servicio_version_so, format: :json)
end
