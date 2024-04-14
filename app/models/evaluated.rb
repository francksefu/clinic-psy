class Evaluated < ApplicationRecord
  validates :name, presence: true
  validates :cpf, presence: true
  validates :email, presence: true
  validates :date_of_birth, presence: true
end
