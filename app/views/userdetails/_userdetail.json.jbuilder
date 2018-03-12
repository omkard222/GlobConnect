json.extract! userdetail, :id, :location, :society_name, :moderator_name, :created_at, :updated_at
json.url userdetail_url(userdetail, format: :json)
