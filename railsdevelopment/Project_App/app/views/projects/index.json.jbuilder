json.array!(@projects) do |project|
  json.extract! project, :id, :title, :content, :author, :date
  json.url project_url(project, format: :json)
end
