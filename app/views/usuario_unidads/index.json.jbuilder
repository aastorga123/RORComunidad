json.array!(@usuario_unidads) do |usuario_unidad|
  json.extract! usuario_unidad, :id, :usuario_id, :unidad_id
  json.url usuario_unidad_url(usuario_unidad, format: :json)
end
