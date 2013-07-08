json.array!(@paths) do |path|
  json.extract! path, :start_node_id, :end_node_id, :state, :start_description, :end_description
  json.url path_url(path, format: :json)
end
