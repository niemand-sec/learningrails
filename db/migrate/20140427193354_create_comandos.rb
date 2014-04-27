class CreateComandos < ActiveRecord::Migration
  def change
    create_table :comandos do |t|
      t.string :instrucion
      t.string :descripcion

      t.timestamps
    end
  end
end
