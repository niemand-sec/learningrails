class PuertoServicio < ActiveRecord::Base

belongs_to :puerto
belongs_to :servicio

#attr_accesible :puerto_id, :servicio_id


end
