class ArticlesController < ApplicationController

  def show
    @article = Article.find(10)
  end
  def new
    @article = Article.new
    @article.title = 'Demo'
  end

  def create
    @article = Article.create(title: params[:article][:title], content: params[:article][:content])
    render json: @article
  end
end
