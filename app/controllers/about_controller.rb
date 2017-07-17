class AboutController < ApplicationController
  def index
    @page = Article.where(url: 'about').first
    @page.extend MyPage
    @page.name = @page.slave
  end
end
