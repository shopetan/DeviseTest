json.array!(@q_texts) do |q_text|
  json.extract! q_text, :id, :number, :content, :check
  json.url q_text_url(q_text, format: :json)
end
