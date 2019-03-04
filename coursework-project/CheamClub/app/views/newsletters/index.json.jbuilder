json.array!(@newsletters) do |newsletter|
  json.extract! newsletter, :id, :title, :date, :attachment
  json.url newsletter_url(newsletter, format: :json)
end
