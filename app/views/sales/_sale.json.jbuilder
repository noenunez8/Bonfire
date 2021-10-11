json.extract! sale, :id, :fecha, :account_id, :precio_venta, :monto_cliente, :ganancia, :vendido, :pagado, :created_at, :updated_at
json.url sale_url(sale, format: :json)
