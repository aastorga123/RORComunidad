json.array!(@unidads) do |unidad|
  json.extract! unidad, :id, :numero_unidad, :calle_interna, :ubicacion_id, :categoria_id
  json.url unidad_url(unidad, format: :json)
end
