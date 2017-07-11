class ArticlesController < ApplicationController
  before_action :set_article, only: [:show]

  # GET /articles
  # GET /articles.json
  def index
    @articles = Article.all
  end

  # GET /articles/1
  # GET /articles/1.json
  def show
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_article
      case params[:id]
      when /^[a-z]+$/
        @article = Article.where(url: params[:id]).first
      else
        @article = Article.find(params[:id])
      end
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def article_params
      params.require(:article).permit(:title, :description, :slave, :image_uid, :image_name, :url, :sort)
    end
end
