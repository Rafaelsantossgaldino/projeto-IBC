class Produto < ApplicationRecord
    enum classificacao: { 'Produto' => 0, 'Servico' => 1 }
end
