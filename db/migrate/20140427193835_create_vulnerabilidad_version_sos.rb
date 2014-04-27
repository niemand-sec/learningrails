class CreateVulnerabilidadVersionSos < ActiveRecord::Migration
  def change
    create_table :vulnerabilidad_version_sos do |t|

      t.timestamps
    end
  end
end
