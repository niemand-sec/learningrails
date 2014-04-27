json.array!(@herramienta) do |herramientum|
  json.extract! herramientum, :id, :nombre, :descripcion
  json.url herramientum_url(herramientum, format: :json)
end
