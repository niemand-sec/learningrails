class CreatePuertos < ActiveRecord::Migration
  def change
    create_table :puertos do |t|
      t.integer :numero
      t.string :descripcion

      t.timestamps
    end
  end
end
