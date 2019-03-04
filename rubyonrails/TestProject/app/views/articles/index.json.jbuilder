json.array!(@articles) do |article|
  json.extract! article, :id, :title, :content, :author, :date
  json.url article_url(article, format: :json)
end
