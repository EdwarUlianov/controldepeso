class AddComplexionToUsuarios < ActiveRecord::Migration
  def change
    add_column :usuarios, :complexion, :string
  end
end
