json.extract! gallery, :id, :title, :description, :slave, :image_uid, :image_name, :url, :sort, :created_at, :updated_at
json.url gallery_url(gallery, format: :json)
