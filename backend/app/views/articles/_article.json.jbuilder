json.extract! article, :id, :url, :created_at, :updated_at
json.url article_url(article, format: :json)
