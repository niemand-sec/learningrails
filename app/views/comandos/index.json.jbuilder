json.array!(@comandos) do |comando|
  json.extract! comando, :id, :instrucion, :descripcion
  json.url comando_url(comando, format: :json)
end
