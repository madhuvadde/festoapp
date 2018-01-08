json.extract! task, :id, :name, :description, :duration, :complete, :created_at, :updated_at
json.url task_url(task, format: :json)
