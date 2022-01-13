class Comment < ApplicationRecord
  include Visible

  belongs_to :produto
  enum classificacao: { 'Like' => 0, 'Deslike' => 1 }

  enum status:  { 'Public' => 0, 'Private' => 2, 'Archived' => 3 }

end
