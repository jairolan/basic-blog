class ArticlesController < ApplicationController
  before_action :find_params, except: [:new, :create, :index, :from_author]
  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]
  def index
    @articles = Article.all
  end
  def show
    # @article = Article.find(params[:id])
  end
  def new
    @article = Article.new
  end

  def edit
    # @article = Article.find(params[:id])
  end

  def update
    # @article = Article.find(params[:id])
    @article.update(title: params[:article][:title], content: params[:article][:content])
    redirect_to @article
  end

  def create
    @article = current_user.articles.create(title: params[:article][:title], content: params[:article][:content])
=begin
    @article = Article.create(title: params[:article][:title],
                              content: params[:article][:content],
                              user: current_user)
=end
    render json: @article
  end

  def destroy
    # @article = Article.find(params[:id])
    @article.destroy
    redirect_to root_path
  end

  def from_author
    @user = User.find(params[:user_id])
  end

  def find_params
    @article = Article.find(params[:id])
  end
end
