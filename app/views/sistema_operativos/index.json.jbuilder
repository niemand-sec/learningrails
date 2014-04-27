json.array!(@sistema_operativos) do |sistema_operativo|
  json.extract! sistema_operativo, :id, :nombre, :descripcion
  json.url sistema_operativo_url(sistema_operativo, format: :json)
end
