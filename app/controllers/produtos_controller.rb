class ProdutosController < ApplicationController

  def index
    @produtos = Produto.all
  end

  def show
    @produtos = Produto.find(params[:id])
  end
  
  def new
    @produto = Produto.new
    respond_to do |format|
      format.js
    end
  end
  
  def create
    @produto = Produto.new(produto_params)

    respond_to do |format|
      if @produto.save
        format.js { redirect_to produtos_url }
      else
        format.js { render :new }
      end
    end
  end

  def edit
    @produto =  Produto.find(params[:id]) 
    respond_to do |format|
      format.js
    end   
  end

  def update
    @produto = Produto.find(params[:id])

    respond_to do |format|
      if @produto.update_attributes(produto_params)
        format.js { redirect_to produtos_url }
      else
        format.js { render :edit }
      end
    end
  end

  def destroy
    @produtos = Produto.find(params[:id])
    @produtos.destroy

    redirect_to root_path
  end
  
  
  private

  def produto_params
    params.require(:produto).permit(:codigo, :nome, :classificacao, :descricao, :status )
  end
end
