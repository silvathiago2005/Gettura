class CreatePaginaPrincipals < ActiveRecord::Migration
  def change
    create_table :pagina_principals do |t|
      t.string :index

      t.timestamps null: false
    end
  end
end
