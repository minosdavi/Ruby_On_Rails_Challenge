json.extract! order, :id, :price, :delivery_tax, :created_at, :updated_at
json.url order_url(order, format: :json)
