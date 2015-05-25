class Usuario < ActiveRecord::Base

  # Descripciones de los valores del campo 'sexo'
  SEXO = {'Hombre' => 'H',
          'Mujer' => 'M'}
  
  # Descripciones de los valores del campo 'complexion'
  COMPLEXION = {'Delgada' => 'D', 
                'Normal' => 'N',
                'Fuerte' => 'F'}
                
  validates :nombre, presence: true, uniqueness: true
  validates :nacimiento, presence: true
  validates :altura, numericality: { greater_than: 0 }
  validates :sexo, inclusion: { in: %w(H M) }
  validates :complexion, inclusion: { in: %w(D N F) }

  # Descripción del valor del campo 'sexo'
  def sexo_descripcion
    SEXO.index(self.sexo)
  end

  # Fija el valor del campo 'sexo' en función de la descripción
  # recibida
  def sexo_descripcion=(descripcion)
    self.sexo = SEXO[descripcion]
  end
  
  # Descripción del valor del campo 'complexion'
  def complexion_descripcion
    COMPLEXION.index(self.complexion)
  end
  
  # Fija el valor del campo 'complexion' en función de la descripción recibida
  def complexion_descripcion=(descripcion)
    self.complexion = COMPLEXION[descripcion]
  end
  
end
