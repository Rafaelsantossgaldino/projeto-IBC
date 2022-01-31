class Produto < ApplicationRecord
  include Visible
  has_many :comments, dependent: :destroy

  mount_uploader :image, FileUploader

  # Validacoes
  validates :codigo, presence: true, length: { minimum: 1}
  validates :nome, presence: true, length: { minimum: 9}
  validates :classificacao, presence: true, length: { minimum: 2}
  validates :descricao, presence: true, length: { minimum: 10}
  validates :categoria, presence: true, length: { minimum: 1}
  #validates :valor, presence: true, length: { minimum: 1}
  
  enum classificacao: { 
    'Produto' => 0,
    'Servico' => 1
  }

  enum status: { 
    'Public' => 0,
    'Private' => 1,
    'Archived' => 2
  }
  
  enum categoria: { 
    'Camisetas' => 0,
    'Saias' => 1, 
    'Vestidos' => 2,
    'Body' => 3,
    'Cropped' => 4,
    'Blusas' => 5, 
    'Calças' => 6,
    'Shorts' => 7,
    'Macacão' => 8
  }

end
