json.extract! product, :id, :description, :price, :stock, :order_number, :created_at, :updated_at
json.url product_url(product, format: :json)
