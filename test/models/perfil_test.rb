require 'test_helper'

class PerfilTest < ActiveSupport::TestCase

    test "crear_perfil" do
        perfil1 = Perfil.new({ descripcionperfil: 'aaaa', nombreperfil: 'bbbb' })
        assert perfil1.save
    end
    
    test "crear_perfil_null" do
        perfil1 = Perfil.new({ descripcionperfil: nil, nombreperfil: nil })
        assert perfil1.save
    end
  
end


