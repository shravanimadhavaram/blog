json.array!(@articles) do |article|
  json.extract! article, :id, :summary, :user_id, :description
  json.url article_url(article, format: :json)
end
