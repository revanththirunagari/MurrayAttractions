json.array!(@users) do |user|
  json.extract! user, :id, :Name, :Description, :Rating, :Entry, :Web
  json.url user_url(user, format: :json)
end
