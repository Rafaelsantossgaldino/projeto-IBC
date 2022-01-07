class Produto < ActiveRecord::Base
    enum classificacao: { 'Produto' => 0, 'Seiviço' => 1 }
end
