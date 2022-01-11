class Comment < ApplicationRecord
  include Visible

  belongs_to :produto
  enum classificacao: { 'Like' => 0, 'Deslike' => 1 }

  VALID_STATUSES = ['public', 'private', 'archived']

  validates :status, inclusion: { in: VALID_STATUSES }  
end
