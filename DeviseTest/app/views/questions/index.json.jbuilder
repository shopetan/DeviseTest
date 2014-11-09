json.array!(@questions) do |question|
  json.extract! question, :id, :date, :number, :done
  json.url question_url(question, format: :json)
end
