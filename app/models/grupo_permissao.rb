class GrupoPermissao < ActiveRecord::Base
  belongs_to :grupo
  belongs_to :permissao
end
