class ContactController < ApplicationController
  def index
    @message = Message.new
  end
end
