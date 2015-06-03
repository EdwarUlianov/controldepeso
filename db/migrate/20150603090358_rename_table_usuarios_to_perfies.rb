class RenameTableUsuariosToPerfiles < ActiveRecord::Migration
  def change
    rename_table :usuarios, :perfiles
  end
end
