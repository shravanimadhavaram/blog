json.array!(@comments) do |comment|
  json.extract! comment, :id, :context, :commentable_id, :commentable_string
  json.url comment_url(comment, format: :json)
end
