class MessageMailer < ActionMailer::Base

  default from: "brandonelder3@gmail.com",
          reply_to: "brandonelder3@gmail.com"

  def new_message(message)
    @message = message
    
    mail subject: "Message from #{message.firstName} #{message.lastName}"
  end

end
