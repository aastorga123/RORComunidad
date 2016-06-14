class UsuarioUnidad < ActiveRecord::Base
  belongs_to :usuario
  belongs_to :unidad
end
