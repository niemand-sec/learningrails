class CreatePuertoServicios < ActiveRecord::Migration
  def change
    create_table :puerto_servicios do |t|

      t.timestamps
    end
  end
end
