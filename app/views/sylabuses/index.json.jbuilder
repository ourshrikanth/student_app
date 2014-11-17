json.array!(@sylabuses) do |sylabus|
  json.extract! sylabus, :id, :user_id, :name
  json.url sylabus_url(sylabus, format: :json)
end
