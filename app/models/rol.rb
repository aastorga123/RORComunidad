class Rol < ActiveRecord::Base
    has_many :usuario_rol
  has_many :usuario, :through => :usuario_rol
  
  validates :nombrerol, :presence => {:message => "- Usted debe ingresar un rol"}
end
