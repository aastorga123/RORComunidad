json.array!(@tipo_cuenta) do |tipo_cuentum|
  json.extract! tipo_cuentum, :id, :tipo
  json.url tipo_cuentum_url(tipo_cuentum, format: :json)
end
