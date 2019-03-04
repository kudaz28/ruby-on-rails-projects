json.array!(@blog_apps) do |blog_app|
  json.extract! blog_app, :id, :index
  json.url blog_app_url(blog_app, format: :json)
end
