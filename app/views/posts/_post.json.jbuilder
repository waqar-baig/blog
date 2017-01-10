json.extract! post, :id, :title, :description, :category_id, :status, :created_at, :updated_at
json.url post_url(post, format: :json)