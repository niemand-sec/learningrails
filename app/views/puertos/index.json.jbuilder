json.array!(@puertos) do |puerto|
  json.extract! puerto, :id, :numero, :descripcion
  json.url puerto_url(puerto, format: :json)
end
