class MessageMailer < ApplicationMailer
  default from: 'site@metalomaster.ru'
 
  def welcome_email(message)
    @message = message
    @url = 'http://metalomaster.ru'
    mail(to: 'info@metalomaster.ru', subject: 'Сообщение с сайта site@metalomaster.ru')
  end
end
