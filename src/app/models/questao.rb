class Questao < ApplicationRecord
    belongs_to :resposta, dependent: :destroy
    has_many :opcos, dependent: :destroy
    has_many :questoes_templates, dependent: :destroy
    has_many :templates, through: :questoes_templates
end