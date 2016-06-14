json.array!(@clientes) do |cliente|
  json.extract! cliente, :id, :rut, :razon_social, :direccion_cliente, :email_cliente, :telefono_clinte, :representante_legal, :logo, :usuario_id, :banco_id
  json.url cliente_url(cliente, format: :json)
end
