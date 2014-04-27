json.array!(@vulnerabilidads) do |vulnerabilidad|
  json.extract! vulnerabilidad, :id, :nombre, :descripcion, :fechaDescubrimiento
  json.url vulnerabilidad_url(vulnerabilidad, format: :json)
end
