class CooperationController < ApplicationController
  def index
    @page = Article.where(url: 'cooperation').first
    @page.extend MyPage
    @page.name = @page.slave
  end
end
