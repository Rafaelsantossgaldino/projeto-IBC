class ProdutosController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    @q = Produto.ransack(params[:q])
    @produtos = @q.result(distinct: true).includes(:comments)
  end

  def response_json
    @produto = Produto.new(produto_params) 

    respond_to do |format|
      #render json: JSON.pretty_generate(@produtos.as_json)
      if @produto.save
        format.json { render json: @produto }
      else
        format.json { render :json => @produto.errors }
      end
    end
  end

  def show
    @produto = Produto.find(params[:id])

    respond_to do |format|
      format.html
      format.json { render json: @produto }
    end
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
      format.html
      format.json { render json: @produto }
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
      format.html
      format.json { head :ok }
    end
  end

  def destroy
    @produto = Produto.find(params[:id])
    @produto.destroy
    redirect_to root_path

    respond_to do |format|
      format.html
      format.json { head :ok }
    end

  end
  
  
  private

  def produto_params
    params.require(:produto).permit(:codigo, :nome, :classificacao, :descricao, :status, :categoria )
  end
end
