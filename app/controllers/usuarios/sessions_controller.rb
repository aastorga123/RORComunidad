class Usuarios::SessionsController < Devise::SessionsController
# before_action :configure_sign_in_params, only: [:create]
#before_filter :require_no_authentication, :only => :new


#def after_sign_in_path_for(usuario)
  #if current_usuario.sign_in_count == 0
  #  inicio_index_path
#  else
    #root_path
#  end
#end

  # GET /resource/sign_in
  # def new
  #   super
  # end

  # POST /resource/sign_in
  # def create
  #   super
  # end

  # DELETE /resource/sign_out
  # def destroy
  #   super
  # end

  # protected

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_in_params
  #   devise_parameter_sanitizer.permit(:sign_in, keys: [:attribute])
  # end
end
