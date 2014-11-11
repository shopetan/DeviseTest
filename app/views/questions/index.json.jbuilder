json.array!(@questions) do |question|
  json.extract! question, :id, :number
  json.url question_url(question, format: :json)
end
