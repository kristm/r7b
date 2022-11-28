class CommentsController < ApplicationController
  before_action :set_article

  def index
    @comments = @article.comments
  end

  def new
    @comment = @article.comments.new
  end

  def create
    @comment = @article.comments.new(comment_params)
    if @comment.save
      redirect_to articles_path
    else
      render :new
    end
  end

  def edit
  end



  private

  def set_article
    @article = Article.find params[:article_id]
  end

  def comment_params
    params.require(:comment).permit(:comment, :author)
  end
end
