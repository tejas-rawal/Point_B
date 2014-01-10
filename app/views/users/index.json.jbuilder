json.array!(@users) do |user|
  json.extract! user, :id, :name, :age, :location, :profile_pic, :bio
  json.url user_url(user, format: :json)
end
