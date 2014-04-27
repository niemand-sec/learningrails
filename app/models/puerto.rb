class Puerto < ActiveRecord::Base

attr_accessible :numero, :descipcion

has_many :puerto_servicios
has_many :servicios, :through => :puerto_servicios

end
