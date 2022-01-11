class Produto < ApplicationRecord
  include Visible
  has_many :comments, dependent: :destroy

  # Validacoes
  validates :codigo, presence: true, length: { minimum: 3}
  validates :nome, presence: true, length: { minimum: 10}
  validates :classificacao, presence: true , length: { minimum: 2}
  validates :descricao, presence: true, length: { minimum: 10}

  
  enum classificacao: { 'Produto' => 0, 'Servico' => 1 }

  VALID_STATUSES = ['public', 'private', 'archived']

  validates :status, inclusion: { in: VALID_STATUSES }
end
