class ConnectController < ApplicationController
  def index
    @page = Article.where(url: 'connect').first
    @page.extend MyPage
    @page.name = @page.slave
  end
end
