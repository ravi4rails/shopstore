json.extract! product, :id, :name, :shopify_product_id, :last_shopify_sync, :created_at, :updated_at
json.url product_url(product, format: :json)