json.array!(@posts) do |post|
  json.extract! post, :id, :post, :user_id, :summary
  json.url post_url(post, format: :json)
end
