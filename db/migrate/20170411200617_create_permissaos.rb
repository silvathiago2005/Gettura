class CreatePermissaos < ActiveRecord::Migration
  def change
    create_table :permissaos do |t|
      t.string :nome
      t.text :descricao

      t.timestamps null: false
    end
  end
end
