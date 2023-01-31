class ArticlesController < ApplicationController
  before_action :set_article, only: %i[show edit update]

  def index
    @articles = Article.all
  end

  def new
    @article = Article.new
  end

  def create
    article = Article.create(article_params)
    redirect_to article_path(article.id)
  end

  def show() end

  def edit() end

  def update
    @article.update(article_params)
    redirect_to article_path(@article.id)
  end

  def destroy
    Article.destroy(params['id'])
    redirect_to articles_path
  end

  private

  def article_params
    params.require(:article).permit(:title, :content)
  end

  def set_article
    @article = Article.find(params['id'])
  end
end
