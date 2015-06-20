require 'test_helper'

class UsuarioTest < ActiveSupport::TestCase

  def setup
    @usuario = usuarios(:uno)
  end    
  
  # Válido
  test "usuario debería ser válido" do
    assert @usuario.valid?
  end
  
  # Email
  test 'email debe estar presente' do
    @usuario.email = ' '
    assert_not @usuario.valid?
  end
  
  test 'email no debe ser demasiado largo' do
    @usuario.email = "a" * 255 + "@ejemplo.es"
    assert_not @usuario.valid?
  end
  
  test 'email debe ser único' do
    duplicado = @usuario.dup
    assert_not duplicado.valid?
  end

  test 'email debe tener el formato correcto' do 
    @usuario.email = 'esto.no.puede.ser'
    assert_not @usuario.valid?
  end

  # Password

  test 'password debe estar presente' do
    @usuario.password_digest = ' '
    assert_not @usuario.valid?
  end

  test 'password de tener al menos 6 caracteres' do
    @usuario.password_digest = 'abcde'
    assert_not @usuario.valid?
  end

end
