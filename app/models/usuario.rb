class Usuario < ActiveRecord::Base

  # Descripciones de los valores del campo 'sexo'
  SEXO = {'Hombre' => 'H',
          'Mujer' => 'M'}

  validates :nombre, presence: true, uniqueness: true
  validates :nacimiento, presence: true
  validates :altura, numericality: { greater_than: 0 }
  validates :sexo, inclusion: { in: %w(H M) }
  validates :complexion, presence: true

  # Descripción del valor del campo 'sexo'
  def sexo_descripcion
    SEXO.index(self.sexo)
  end

  # Fija el valor del campo 'sexo' en función de la descripción
  # recibida
  def sexo_descripcion=(descripcion)
    self.sexo = SEXO[descripcion]
  end
end
