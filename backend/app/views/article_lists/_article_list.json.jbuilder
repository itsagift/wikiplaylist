json.extract! article_list, :id, :title, :created_at, :updated_at
json.url article_list_url(article_list, format: :json)
