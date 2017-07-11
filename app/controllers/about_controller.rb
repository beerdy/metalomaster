class AboutController < ApplicationController
  def index
    @article = Article.where(url: 'about').first
  end
end
