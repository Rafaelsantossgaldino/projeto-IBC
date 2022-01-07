class ProdutosController < ApplicationController

  def index
    @produtos = Produto.all
  end

  def show
    @produtos = Produto.find(params[:id])
  end
  
  def new
    @produtos = Produto.new
  end
  
  def create
    @produtos = Produto.new(produto_params)

    if @produtos.save
      redirect_to @produtos
      else
        render :new
    end
  end
  
  private

  def produto_params
    params.require(:produto).permit(:codigo, :nome, :classificacao, :descricao )
  end
end
