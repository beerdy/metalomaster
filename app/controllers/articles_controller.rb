module MyPage
  attr_accessor :name
end
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
        @page = Article.where(url: params[:id]).first
      else
        @page = Article.find(params[:id])
      end
      @page.extend MyPage
      @page.name = @page.slave
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def article_params
      params.require(:article).permit(:title, :description, :slave, :image_uid, :image_name, :url, :sort)
    end
end
