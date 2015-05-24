class Usuario < ActiveRecord::Base

  validates :nombre, presence: true, uniqueness: true
  validates :nacimiento, presence: true
  validates :altura, numericality: { greater_than: 0 }
  validates :sexo, presence: true
  validates :complexion, presence: true

end
