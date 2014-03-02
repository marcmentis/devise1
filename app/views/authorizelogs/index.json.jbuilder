json.array!(@authorizelogs) do |authorizelog|
  json.extract! authorizelog, :id, :title, :body
  json.url authorizelog_url(authorizelog, format: :json)
end
