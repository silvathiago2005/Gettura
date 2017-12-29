class CreateTamires < ActiveRecord::Migration
  def change
    create_table :tamires do |t|

      t.timestamps null: false
    end
  end
end
