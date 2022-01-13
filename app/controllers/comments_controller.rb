class CommentsController < ApplicationController
  def create
    @produto = Produto.find(params[:produto_id])
    @comment = @produto.comments.create(comment_params)
    redirect_to produto_path(@produto) 
  end

  def destroy
    @produto = Produto.find(params[:produto_id])
    @comment = @produto.comments.find(params[:id])
    @comment.destroy
    redirect_to produto_path(@produto)
  end

  private

  def comment_params
    params.require(:comment).permit(:commenter, :classificacao, :status)
  end
end
