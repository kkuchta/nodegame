json.array!(@nodes) do |node|
  json.extract! node, :description
  json.url node_url(node, format: :json)
end
