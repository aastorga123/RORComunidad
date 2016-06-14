class Usuarios::RegistrationsController < Devise::RegistrationsController
before_action :configure_sign_up_params, only: [:create, :new]
# before_action :configure_account_update_params, only: [:update]
before_filter :authenticate_scope! #este se ocupa solo para que los usuarios se registren antes de esta accion
skip_before_filter :require_no_authentication #esto permite saltarse la autenticacion


  # GET /resource/sign_up
   def new
     @listado_rol = Rol.all

     #  redirect_to root_url, notice: " Only Administrators can add accounts "
   end

  # POST /resource
   def create
    
     if Usuario.find_by(:email => sign_up_params[:email]) == nil #verifica que el email sea uno nuevo
     
     generated_password = Devise.friendly_token.first(8)
     user = Usuario.create!(:email => sign_up_params[:email], :password => generated_password, :perfil_id => sign_up_params[:perfil_id])

     AccionCorreo.registro_usuario(user, generated_password).deliver
    
    if params[:roles] != ""
      @usuario = Usuario.find(user.id) 
      params[:roles].each do |rol| 
       if rol != ""
         UsuarioRol.create!(:usuario_id => @usuario.id, :rol_id => rol)
       end
      end 
    else
   
    end
    
    redirect_to new_usuario_registration_path, notice: " Usuario ingresado con exito, se ha enviado un correo de registro al usuario " + user.email
   else
    redirect_to new_usuario_registration_path, notice: " Usuario existente, ingrese no nuevo. "
   end
   end

  # GET /resource/edit
  # def edit
  #   super
  # end

  # PUT /resource
  # def update
  #   super
  # end

  # DELETE /resource
  # def destroy
  #   super
  # end

  # GET /resource/cancel
  # Forces the session data which is usually expired after sign
  # in to be expired now. This is useful if the user wants to
  # cancel oauth signing in/up in the middle of the process,
  # removing all OAuth session data.
  # def cancel
  #   super
  # end

   protected

  # If you have extra params to permit, append them to the sanitizer.
   def configure_sign_up_params
     #devise_parameter_sanitizer.for(:sign_up) << [:perfil_id, :id, :email, :password, :password_confirmation, :roles]
     #devise_parameter_sanitizer.permit(:sign_up, keys: [:perfil_id, :id, :email, :password, :password_confirmation, :rol_id])
     #devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:perfil_id, :id, :email, :password, :password_confirmation, :rol_id, :new) }
     devise_parameter_sanitizer.permit(:sign_up, keys: [:perfil_id, :id, :email, :password, :password_confirmation, :rol_id])
   end

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_account_update_params
  #   devise_parameter_sanitizer.permit(:account_update, keys: [:attribute])
  # end

  # The path used after sign up.
  # def after_sign_up_path_for(resource)
   #  super(resource)
   #   after_sign_in_path_for(resource)
   #    new_usuario_registration_path
   #end

  # The path used after sign up for inactive accounts.
  # def after_inactive_sign_up_path_for(resource)
  #   super(resource)
   #   inicio_index_path
   #end
   
end
