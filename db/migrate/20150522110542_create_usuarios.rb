class CreateUsuarios < ActiveRecord::Migration
  def change
    create_table :usuarios do |t|
      t.integer :id
      t.string :nombre
      t.date :nacimiento
      t.float :altura

      t.timestamps null: false
    end
  end
end
