json.array!(@paths) do |path|
  json.extract! path, :startNodeID, :endNodeID, :state, :startDescription, :endDescription
  json.url path_url(path, format: :json)
end
