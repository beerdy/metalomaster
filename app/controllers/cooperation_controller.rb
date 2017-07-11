class CooperationController < ApplicationController
  def index
    @article = Article.where(url: 'cooperation').first
  end
end
