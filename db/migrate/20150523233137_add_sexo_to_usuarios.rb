class AddSexoToUsuarios < ActiveRecord::Migration
  def change
    add_column :usuarios, :sexo, :string
  end
end
