json.array!(@attractionsdbs) do |attractionsdb|
  json.extract! attractionsdb, :id, :name, :description, :rating, :entry, :web
  json.url attractionsdb_url(attractionsdb, format: :json)
end
