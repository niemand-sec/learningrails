class CreateVersionSos < ActiveRecord::Migration
  def change
    create_table :version_sos do |t|
      t.string :nombre
      t.string :descripcion

      t.timestamps
    end
  end
end
