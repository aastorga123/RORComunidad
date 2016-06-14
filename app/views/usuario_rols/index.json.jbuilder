json.array!(@usuario_rols) do |usuario_rol|
  json.extract! usuario_rol, :id, :usuario_id, :rol_id
  json.url usuario_rol_url(usuario_rol, format: :json)
end
