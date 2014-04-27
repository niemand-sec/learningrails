json.array!(@vulnerabilidad_version_sos) do |vulnerabilidad_version_so|
  json.extract! vulnerabilidad_version_so, :id
  json.url vulnerabilidad_version_so_url(vulnerabilidad_version_so, format: :json)
end
