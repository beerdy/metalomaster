class WelcomeController < ApplicationController
  def index
    @article = Article.where(url: 'main').first
  end
end
