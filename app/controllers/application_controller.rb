# По умолчанию
class MyPages
  attr_accessor :name, :title, :head, :description
  def initialize
    @name = 'МАТЕРИАЛЫ'
    @title = 'Металоизделия'
  end
end

class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def initialize
    super
    content
    @page = MyPages.new
    @products_special = Product.where(special: true).limit(16)
    @products_popular = Product.where(popular: true).limit(8)
  end

  def content
    @services = Array.new
    variables = Object.new
    Content.all.each do |c|
      @mini_info = c if c.url == 'mini_info'
      @service_1 = c if c.url == 'service_1'
      @service_2 = c if c.url == 'service_2'
      
      @super_info = c if c.url == 'super_info'
      
      @map = c if c.url == 'map'
      @logo = c if c.url == 'logo'
      @services << c if c.url == 'service'
      variables = c if c.url == 'variables'
      @head = c if c.url == 'head'
    end
    eval variables.description
    @social = variables.slave
  end
end
