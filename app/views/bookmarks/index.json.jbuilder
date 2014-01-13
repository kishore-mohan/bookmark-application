json.array!(@bookmarks) do |bookmark|
  json.extract! bookmark, :title, :url
  json.url bookmark_url(bookmark, format: :json)
end
