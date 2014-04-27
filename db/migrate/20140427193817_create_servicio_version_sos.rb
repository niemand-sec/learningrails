class CreateServicioVersionSos < ActiveRecord::Migration
  def change
    create_table :servicio_version_sos do |t|

      t.timestamps
    end
  end
end
