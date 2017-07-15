class MessageMailer < ActionMailer::Base

  default from: "noreply@gmail.com"
  default to: "brandonelder3@gmail.com"

  def new_message(message)
    @message = message
    
    mail subject: "Message from #{message.name}"
  end

end
