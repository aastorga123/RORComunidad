class AccionCorreo < ApplicationMailer
    default from: 'notifications@example.com'
 
  def registro_usuario(user,generated_password)
    @user = user
    @password = generated_password
    @url  = 'https://micomunidad-alexisopencore.c9users.io'
    mail(to: @user.email, subject: 'Bienvenido al sitio web')
  end
end
