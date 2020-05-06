json.extract! recipe, :id, :title, :summary, :method, :body, :published, :user_id, :created_at, :updated_at
json.url recipe_url(recipe, format: :json)
