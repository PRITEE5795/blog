class CommentsController < ApplicationController
    def create
      @article = Article.find(params[:article id])
      @comment = @article.comments.create(comment_params)
      redirect_to @article

    end

    private
    def comment_params
params[:comment].permit(:commenter, :body)
  end

end
