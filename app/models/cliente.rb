class Cliente < ActiveRecord::Base
  belongs_to :usuario
  belongs_to :banco
  has_many :ubicacion, :dependent => :destroy
  
  alias_attribute :direccion, :direccion_cliente
  alias_attribute :email, :email_cliente
  alias_attribute :telefono, :telefono_cliente
  
  mount_uploader :logo, FotoUploader
  
end
