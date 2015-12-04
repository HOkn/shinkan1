json.array!(@questions) do |question|
  json.extract! question, :id, :title, :content, :text,, :askeduser, :string,, :keyword1, :text, :keyword2, :text, :keyword3, :text,, :user_id
  json.url question_url(question, format: :json)
end
