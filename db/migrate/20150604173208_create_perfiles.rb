class CreatePerfiles < ActiveRecord::Migration
  def change
    create_table :perfiles do |t|
      t.string :nombre
      t.date :nacimiento
      t.float :altura
      t.string :sexo
      t.string :complexion

      t.timestamps null: false
    end
  end
end
