require 'test_helper'

class UsuarioTest < ActiveSupport::TestCase

  test 'usuario debería ser válido' do
    assert usuarios(:valido).valid?
  end

  test 'nombre no puede ser blanco' do
    no_valido = usuarios(:valido)
    no_valido.nombre = ' '
    assert_not no_valido.valid?
  end

  test 'nombre debe ser único' do
    duplicado = usuarios(:valido).dup
    assert_not duplicado.valid?
  end

end
