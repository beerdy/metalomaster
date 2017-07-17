class DeliveryController < ApplicationController
  def index
    @page = Article.where(url: 'delivery').first
    @page.extend MyPage
    @page.name = @page.slave
  end
end
