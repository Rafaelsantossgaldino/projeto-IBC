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

  def edit
    @produtos =  Produto.find(params[:id])    
  end

  def update
    @produto = Produto.find(params[:id])

    if @produtos.update(produto_params)
      redirect_to @produtos
    else
      render :edit
    end
  end

  def destroy
    @produtos = Produto.find(params[:id])
    @produtos.destroy

    redirect_to root_path
  end
  
  
  private

  def produto_params
    params.require(:produto).permit(:codigo, :nome, :classificacao, :descricao )
  end
end
