class CommentsController < ApplicationController
  def create
    @produtos = Produto.find(params[:produto_id])
    @comment = @produtos.comments.create(comment_params)
    redirect_to produto_path(@produtos) 
  end

  private

  def comment_params
    params.require(:comment).permit(:commenter, :classificacao)
  end
end
