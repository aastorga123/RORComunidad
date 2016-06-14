json.array!(@perfils) do |perfil|
  json.extract! perfil, :id, :nombreperfil, :descripcionperfil
  json.url perfil_url(perfil, format: :json)
end
