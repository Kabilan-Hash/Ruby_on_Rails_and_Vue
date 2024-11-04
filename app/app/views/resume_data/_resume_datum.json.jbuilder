json.extract! resume_datum, :id, :name, :files, :created_at, :updated_at
json.url resume_datum_url(resume_datum, format: :json)
json.files do
  json.array!(resume_datum.files) do |file|
    json.id file.id
    json.url url_for(file)
  end
end
