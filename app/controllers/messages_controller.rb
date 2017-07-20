class MessagesController < ApplicationController

  def new
    @message = Message.new
  end

  def create
    @message = Message.new(message_params)
    
    if @message.valid?
      MessageMailer.new_message(@message).deliver
      redirect_to contact_path, flash: { success: "Thanks for your message. I will respond asap!" }
    else
      flash[:alert] = "I'm sorry...an error occurred. Please try again or email me directly."
      render :new
    end
  end

private

  def message_params
    params.require(:message).permit(:firstName, :lastName, :company, :email, :content)
  end

end
