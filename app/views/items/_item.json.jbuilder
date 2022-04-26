json.extract! item, :id, :name, :title, :price, :description, :image, :created_at, :updated_at
json.url item_url(item, format: :json)
