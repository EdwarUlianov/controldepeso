require 'test_helper'

class UsuarioTest < ActiveSupport::TestCase

  def setup
    @usuario = usuarios(:valido)
  end  
  
  # Válido
  test 'usuario debería ser válido' do
    assert  @usuario.valid?
  end
  
  # Email
  test 'email debe estar presente' do
    @usuario.email = ' '
    assert_not @usuario.valid?
  end
  
  test "email no debe ser demasiado largo" do
    @usuario.email = "a" * 244 + "@ejemplo.es"
    assert_not @usuario.valid?
  end
  
end
