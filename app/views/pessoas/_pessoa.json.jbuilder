json.extract! pessoa, :id, :email, :senha, :created_at, :updated_at
json.url pessoa_url(pessoa, format: :json)
