json.extract! registration, :id, :name, :email, :college, :event_id, :created_at, :updated_at
json.url registration_url(registration, format: :json)
