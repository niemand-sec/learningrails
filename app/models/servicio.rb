class Servicio < ActiveRecord::Base
#	attr_accessible :nombre, :descipcion

	has_one :tipo_de_servicio
	has_many :version_servicios
	has_many :vulnerabilidads
	has_many :puerto_servicios, :class_name => "PuertoServicio", :foreign_key => :puertoservicio_id

	has_many :puertos, :through => :puerto_servicios
	has_many :version_os, :through => :servicio_version_so

 

end
