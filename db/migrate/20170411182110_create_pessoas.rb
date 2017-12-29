class CreatePessoas < ActiveRecord::Migration
  def change
    create_table :pessoas do |t|
      t.string :email
      t.integer :senha

      t.timestamps null: false
    end
  end
end
