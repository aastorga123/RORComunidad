class ApplicationController < ActionController::Base
  #protect_from_forgery with: :exception
  #prepend_before_filter :require_no_authentication, only: [:new ]
  before_action :authenticate_usuario!, except: [:devise_controller] 
  #before_filter :authenticate_usuario
  before_action :configure_permitted_parameters, if: :devise_controller?
  #prepend_before_filter :require_no_authentication
  before_filter :require_no_authentication, :only => :new

  
  def configure_permitted_parameters
   # devise_parameter_sanitizer.for(:sign_in) { |u| u.permit(:perfil_id, :id, :email, :password, :password_confirmation, :rol_id) }
    devise_parameter_sanitizer.permit(:sign_up, keys: [:perfil_id, :id, :email, :password, :password_confirmation, :rol_id, :new, :create])
  end

    # GET
  def buscar_rol
    
  @perfil = Perfil.find(params[:perfil_id])  
  @obtener_rol = Rol.find_by(nombrerol: @perfil.nombreperfil)#Rol.find_by(:nombrerol => @perfil.nombreperfil).collect{|r| [r.nombrerol, r.id]}   
  
    respond_to do |format|
      format.json { render json: @obtener_rol, status: :ok }
    end
  end
  
  rescue_from CanCan::AccessDenied do |exception|
     redirect_to root_url, :alert => exception.message
  end
  
  def current_ability
  @current_ability ||= Ability.new(current_usuario)
  end

  
end
