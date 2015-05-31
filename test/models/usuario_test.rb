require 'test_helper'

class UsuarioTest < ActiveSupport::TestCase

  test 'usuario debería ser válido' do
    assert usuarios(:valido).valid?
  end

end
