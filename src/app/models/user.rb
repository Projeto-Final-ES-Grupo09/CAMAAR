class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :confirmable

  has_and_belongs_to_many :turmas, foreign_key: 'professor_id'
  has_many :users_turmas
  has_many :turmas, through: :users_turmas 
  has_many :respostas
  has_many :templates

end
