json.extract! photo, :id, :title, :description, :slave, :image_uid, :image_name, :url, :sort, :created_at, :updated_at
json.url photo_url(photo, format: :json)
