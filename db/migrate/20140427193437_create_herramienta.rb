class CreateHerramienta < ActiveRecord::Migration
  def change
    create_table :herramienta do |t|
      t.string :nombre
      t.string :descripcion

      t.timestamps
    end
  end
end
