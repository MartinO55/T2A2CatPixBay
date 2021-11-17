json.extract! picture, :id, :picture_title, :picture_url, :description, :non_fungible_token, :created_at, :updated_at
json.url picture_url(picture, format: :json)
