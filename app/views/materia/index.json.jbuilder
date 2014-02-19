json.array!(@materia) do |materium|
  json.extract! materium, :id, :nombre, :descripcion
  json.url materium_url(materium, format: :json)
end
