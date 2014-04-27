class AddIdPuertoToPuertoServicio < ActiveRecord::Migration
  def change
    add_column :puerto_servicios, :id_puerto, :integer
  end
end
