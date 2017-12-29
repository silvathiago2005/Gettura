json.extract! permissao, :id, :nome, :descricao, :created_at, :updated_at
json.url permissao_url(permissao, format: :json)
