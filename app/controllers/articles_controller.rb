class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)

=begin
    redirect_to will cause the browser to make a new request, whereas render 
    renders the specified view for the current request. It is important to use 
    redirect_to after mutating the database or application state. Otherwise, 
    if the user refreshes the page, the browser will make the same request, 
      and the mutation will be repeated.
=end
    if @article.save
      redirect_to @article
    else
      render :new
    end
  end

  private
    def article_params
      params.require(:article).permit(:title, :body)
    end
end
