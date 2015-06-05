require 'test_helper'

class PerfilTest < ActiveSupport::TestCase

  def setup
    @perfil = perfiles(:valido)
  end

  # Válido
  test 'perfil debería ser válido' do
    assert  @perfil.valid?
  end

  # Nombre
  test 'nombre debe estar presente' do
    @perfil.nombre = ' '
    assert_not @perfil.valid?
  end

  test 'nombre debe ser único' do
    duplicado = @perfil.dup
    assert_not duplicado.valid?
  end

  # Nacimiento
  test 'nacimiento debe estar presente' do
    @perfil.nacimiento = nil
    assert_not @perfil.valid?
  end

  # Altura
  test 'altura debe estar presente' do
    @perfil.altura = nil
    assert_not @perfil.valid?
  end

  test 'altura debe ser un número' do
    @perfil.altura = 'a'
    assert_not @perfil.valid?
  end

  test 'altura debe ser mayor que cero' do
    @perfil.altura = 0
    assert_not @perfil.valid?
  end

  test 'altura no puede ser negativo' do
    @perfil.altura = -1
    assert_not @perfil.valid?
  end

  # Sexo
  test '"H" es un valor válido para sexo' do
    @perfil.sexo = 'H'
    assert @perfil.valid?
  end

  test '"M" es un valor válido para sexo' do
    @perfil.sexo = 'M'
    assert @perfil.valid?
  end

  test 'sexo debe estar presente' do
    @perfil.sexo = nil
    assert_not @perfil.valid?
  end

  test 'sexo debe tener un valor válido' do
    @perfil.sexo = 'v'
    assert_not @perfil.valid?
  end

  # Complexión
  test '"D" es un valor válido para sexo' do
    @perfil.complexion = 'D'
    assert @perfil.valid?
  end

  test '"N" es un valor válido para sexo' do
    @perfil.complexion = 'N'
    assert @perfil.valid?
  end

  test '"F" es un valor válido para sexo' do
    @perfil.complexion = 'F'
    assert @perfil.valid?
  end

  test 'complexion debe estar presente' do
    @perfil.complexion = nil
    assert_not @perfil.valid?
  end

  test 'complexion debe tener un valor válido' do
    @perfil.complexion = 'v'
    assert_not @perfil.valid?
  end

end