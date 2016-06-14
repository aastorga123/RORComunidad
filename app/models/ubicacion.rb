class Ubicacion < ActiveRecord::Base
  belongs_to :cliente
  enum tipo: { casa: 0, edificio: 1 }
  has_many :unidad, :dependent => :destroy
  
  alias_attribute :nombre, :nombreubicacion
  alias_attribute :direccion, :direccion_ubicacion
  
end
