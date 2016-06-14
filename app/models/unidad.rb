class Unidad < ActiveRecord::Base
  belongs_to :ubicacion
  belongs_to :categoria
  
  has_many :usuario_unidad
  has_many :usuario, :through => :usuario_unidad
  
  validates :numero_unidad, :presence => {:message => "- Usted debe ingresar el numero"}, :numericality => {:only_integer => true, :message => "- Debe ser numerico"}
  validates :ubicacion_id, :presence => {:message => "- Usted debe ingresar una ubicacion"}
  validates :categoria_id, :presence => {:message => "- Usted debe ingresar una categoria"}
  
end
