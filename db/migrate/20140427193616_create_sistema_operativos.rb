class CreateSistemaOperativos < ActiveRecord::Migration
  def change
    create_table :sistema_operativos do |t|
      t.string :nombre
      t.string :descripcion

      t.timestamps
    end
  end
end
