class Usuario < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  belongs_to :perfil
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         
  has_many :usuario_rol
  has_many :rol, :through => :usuario_rol
  has_many :usuario_rol, :dependent => :destroy
  
  #alias_attribute :correo, :email
  
  has_many :cliente
  has_many :usuario_unidad
  has_many :unidad, :through => :usuario_unidad
  
  validates :email, :presence => {:message => "- Usted debe ingresar un correo valido"}
  validates :perfil_id, :presence => {:message => "- Usted debe ingresar un perfil"}

end
