class CreateVulnerabilidads < ActiveRecord::Migration
  def change
    create_table :vulnerabilidads do |t|
      t.string :nombre
      t.string :descripcion
      t.date :fechaDescubrimiento

      t.timestamps
    end
  end
end
