json.array!(@choices) do |choice|
  json.extract! choice, :id, :body, :correct
  json.url choice_url(choice, format: :json)
end
