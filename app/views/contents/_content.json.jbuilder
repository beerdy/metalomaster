json.extract! content, :id, :title, :description, :slave, :image_uid, :image_name, :url, :sort, :created_at, :updated_at
json.url content_url(content, format: :json)
