require 'test_helper'

class UsuarioTest < ActiveSupport::TestCase

  def setup
    @usuario = usuarios(:valido)
  end

  # Válido
  test 'usuario debería ser válido' do
    assert  @usuario.valid?
  end

  # Nombre
  test 'nombre debe estar presente' do
    @usuario.nombre = ' '
    assert_not @usuario.valid?
  end

  test 'nombre debe ser único' do
    duplicado = @usuario.dup
    assert_not duplicado.valid?
  end

  # Nacimiento
  test 'nacimiento debe estar presente' do
    @usuario.nacimiento = nil
    assert_not @usuario.valid?
  end

  # Altura
  test 'altura debe estar presente' do
    @usuario.altura = nil
    assert_not @usuario.valid?
  end

  test 'altura debe ser un número' do
    @usuario.altura = 'a'
    assert_not @usuario.valid?
  end

  test 'altura debe ser mayor que cero' do
    @usuario.altura = 0
    assert_not @usuario.valid?
  end

  test 'altura no puede ser negativo' do
    @usuario.altura = -1
    assert_not @usuario.valid?
  end

  # Sexo
  test '"H" es un valor válido para sexo' do
    @usuario.sexo = 'H'
    assert @usuario.valid?
  end

  test '"M" es un valor válido para sexo' do
    @usuario.sexo = 'M'
    assert @usuario.valid?
  end

  test 'sexo debe estar presente' do
    @usuario.sexo = nil
    assert_not @usuario.valid?
  end

  test 'sexo debe tener un valor válido' do
    @usuario.sexo = 'v'
    assert_not @usuario.valid?
  end

  # Complexión
  test '"D" es un valor válido para sexo' do
    @usuario.complexion = 'D'
    assert @usuario.valid?
  end

  test '"N" es un valor válido para sexo' do
    @usuario.complexion = 'N'
    assert @usuario.valid?
  end

  test '"F" es un valor válido para sexo' do
    @usuario.complexion = 'F'
    assert @usuario.valid?
  end

  test 'complexion debe estar presente' do
    @usuario.complexion = nil
    assert_not @usuario.valid?
  end

  test 'complexion debe tener un valor válido' do
    @usuario.complexion = 'v'
    assert_not @usuario.valid?
  end

end
