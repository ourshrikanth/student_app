json.array!(@chapters) do |chapter|
  json.extract! chapter, :id, :user_id, :name
  json.url chapter_url(chapter, format: :json)
end
