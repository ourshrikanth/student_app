json.array!(@courses) do |course|
  json.extract! course, :id, :name, :description, :duration, :charge
  json.url course_url(course, format: :json)
end
