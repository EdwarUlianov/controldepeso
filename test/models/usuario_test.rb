require 'test_helper'

class UsuarioTest < ActiveSupport::TestCase

  def setup
    @usuario = usuarios(:valido)
  end

  test 'usuario debería ser válido' do
    assert  @usuario.valid?
  end

  test 'nombre no puede ser blanco' do
    @usuario.nombre = ' '
    assert_not @usuario.valid?
  end

  test 'nombre debe ser único' do
    duplicado = @usuario.dup
    assert_not duplicado.valid?
  end

end
