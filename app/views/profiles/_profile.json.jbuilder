json.extract! profile, :id, :belongs_to, :username, :profile_id, :wallet, :created_at, :updated_at
json.url profile_url(profile, format: :json)
