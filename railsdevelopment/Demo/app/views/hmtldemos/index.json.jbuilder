json.array!(@hmtldemos) do |hmtldemo|
  json.extract! hmtldemo, :id, :title, :body
  json.url hmtldemo_url(hmtldemo, format: :json)
end
