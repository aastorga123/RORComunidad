json.array!(@rols) do |rol|
  json.extract! rol, :id, :nombrerol, :descripcionrol
  json.url rol_url(rol, format: :json)
end
