class ConnectController < ApplicationController
  def index
    @article = Article.where(url: 'connect').first
  end
end
