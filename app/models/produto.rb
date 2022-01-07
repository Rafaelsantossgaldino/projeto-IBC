class Produto < ApplicationRecord
    validates :codigo, presence: true, length: { minimum: 3}
    validates :nome, presence: true, length: { minimum: 20}
    validates :classificacao, presence: true , length: { minimum: 2}
    validates :descricao, presence: true, length: { minimum: 10}

    
    enum classificacao: { 'Produto' => 0, 'Servico' => 1 }
end
