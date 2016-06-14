Rails.application.routes.draw do
  resources :usuario_unidads
  resources :ubicacions
  resources :clientes
  resources :bancos
  resources :tipo_cuenta
  resources :categoria
  resources :usuario_rols
  resources :rols
  resources :perfils
  resources :unidads
  
  get 'inicio/index'
  root 'inicio#index'
  
  
  devise_for :usuarios, controllers: {registrations: "usuarios/registrations", sessions: "usuarios/sessions"}
  
  
  get 'unidads/buscarubicacion/:ubicacion_id' => 'unidads#buscarubicacion'
  get 'application/buscar_rol/:perfil_id' => 'application#buscar_rol'
  

end
