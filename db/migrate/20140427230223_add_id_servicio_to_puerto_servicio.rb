class AddIdServicioToPuertoServicio < ActiveRecord::Migration
  def change
    add_column :puerto_servicios, :id_servicio, :integer
  end
end
