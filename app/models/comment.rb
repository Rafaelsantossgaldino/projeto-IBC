class Comment < ApplicationRecord
  belongs_to :produto
  enum classificacao: { 'Like' => 0, 'Deslike' => 1 }
end
