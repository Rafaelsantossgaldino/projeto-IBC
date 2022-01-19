class AddValorAndCategoriaToProdutos < ActiveRecord::Migration[5.2]
  def change
    add_column :produtos, :valor, :decimal
    add_column :produtos, :categoria, :integer
  end
end
