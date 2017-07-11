json.extract! message, :id, :name, :contact, :subject, :message, :created_at, :updated_at
json.url message_url(message, format: :json)
