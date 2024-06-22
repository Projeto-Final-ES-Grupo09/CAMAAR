class Template < ApplicationRecord
    belongs_to :user, foreign_key: "usuario"
    has_many :formularios

    has_many :questoes_templates, dependent: :destroy
    has_many :questoes, through: :questoes_templates
end
