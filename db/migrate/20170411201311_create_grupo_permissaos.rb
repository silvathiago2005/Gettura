class CreateGrupoPermissaos < ActiveRecord::Migration
  def change
    create_table :grupo_permissaos do |t|
      t.references :grupo, index: true, foreign_key: true
      t.references :permissao, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
