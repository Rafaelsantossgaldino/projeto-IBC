module Visible
  extend ActiveSupport::Concern

  VALID_STATUSES = ['Public' , 'Private', 'Archived']

  VALID_CATEGORIA = ['Camisetas' => 0, 'Saias' => 1, 'Vestidos' => 2, 'Body' => 3, 'Cropped' => 4, 'Blusas' => 5, 'Calças' => 6, 'Shorts' => 7, 'Macacão' => 8]

  # included do
  #   validates :status, inclusion: { in: VALID_STATUSES }
  # end

  class_methods do
    def public_count
      where(status: 'Public').count
    end
  end

  def archived?
    status == 'Archived'
  end
end
  