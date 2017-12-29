class AddGrupoToPessoa < ActiveRecord::Migration
  def change
    add_reference :pessoas, :grupo, index: true, foreign_key: true
  end
end
