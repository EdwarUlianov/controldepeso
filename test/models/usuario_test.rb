require 'test_helper'

class UsuarioTest < ActiveSupport::TestCase

  test 'usuario debería ser válido' do
    assert usuarios(:valido).valid?
  end

  test 'nombre no puede ser blanco' do
    assert_not usuarios(:nombre_blank).valid?
  end

end
