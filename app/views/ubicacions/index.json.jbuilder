json.array!(@ubicacions) do |ubicacion|
  json.extract! ubicacion, :id, :nombreubicacion, :direccion_ubicacion, :tipo, :cliente_id
  json.url ubicacion_url(ubicacion, format: :json)
end
