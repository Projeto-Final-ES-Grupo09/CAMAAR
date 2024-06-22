class Opco < ApplicationRecord
  belongs_to :questao

  validates :texto, presence: true
  validates :alternativa, inclusion: { in: [true, false] }
end