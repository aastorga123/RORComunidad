class Ability
  include CanCan::Ability

  def initialize(user)
    alias_action :create, :read, :update, :destroy, :to => :crud
    alias_action :create, :update, :destroy, :to => :cud
    alias_action :create, :read, :update, :to => :cru
    
    # Define Perfiles
       user ||= Usuario.new 
       if user.email == "alexis.astorga@opencore.cl" # MANAGER DEL SISTEMA
          can :manage, :all
       elsif user.perfil_id == 1 # ADM SISTEMA  
          cannot :crud, :all
       elsif user.perfil_id == 2 # ADM COMUNIDAD
          can :crud, Unidad
          can :crud, Ubicacion
          can :crud, Cliente
       elsif user.perfil_id == 3 # USUARIO
          can :cru, Unidad
          can :cru, Ubicacion
          can :cru, Cliente
          cannot :crud, Usuario
       else 
          cannot :read, :all
       end
       
  end
    #
    # The first argument to `can` is the action you are giving the user
    # permission to do.
    # If you pass :manage it will apply to every action. Other common actions
    # here are :read, :create, :update and :destroy.
    #
    # The third argument is an optional hash of conditions to further filter the
    # objects.
    # For example, here the user can only update published articles.
    #
    #   can :update, Article, :published => true
    #
    # See the wiki for details:
    # https://github.com/CanCanCommunity/cancancan/wiki/Defining-Abilities
  
end
