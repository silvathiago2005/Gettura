class CreateGrupos < ActiveRecord::Migration
  def change
    create_table :grupos do |t|
      t.string :nome
      t.text :descricao

      t.timestamps null: false
    end
  end
end
