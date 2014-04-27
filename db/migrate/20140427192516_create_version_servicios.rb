class CreateVersionServicios < ActiveRecord::Migration
  def change
    create_table :version_servicios do |t|
      t.string :version
      t.date :fechaInicio
      t.date :fechaFin

      t.timestamps
    end
  end
end
