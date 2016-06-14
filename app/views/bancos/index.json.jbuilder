json.array!(@bancos) do |banco|
  json.extract! banco, :id, :nro_cuenta, :nombre_banco, :tipo_cuenta_id
  json.url banco_url(banco, format: :json)
end
