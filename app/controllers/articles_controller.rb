class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end
  
  def show
    @articles = Article.find(params[:id])
  end
  
  def edit
      @articles = Article.find(params[:id])
  end

  def update
    @articles = Article.find(params[:id])

    if @articles.update(article_params)
      redirect_to @articles
    else
      render :edit, status: :unprocessable_entity
    end
  end

  private
    def article_params
      params.require(:article).permit(:title, :body)
  end
end
