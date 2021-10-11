json.extract! account, :id, :nombre, :telefono, :dni, :created_at, :updated_at
json.url account_url(account, format: :json)
