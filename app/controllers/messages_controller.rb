class MessagesController < ApplicationController
  before_action :authenticate_user!
  def index
    # only see messages I sent or messages to messages
    @messages = Message.where("receiver_user_id = ? OR sender_user_id = ?", 
      current_user.id, current_user.id).order("created_at asc")

  end

  def new
    @message = Message.new
  end

  def create
    # if have conversation id in params, use this to set conversation id on new message
    # else make new conversation
    @message = Message.new(message_params)
    if @message.save
      redirect_to messages_path
    else
      render :new
    end
  end

  def show
    @messages = Message.all
  end

  private

  def message_params
    params.require(:message).permit(:sender_user_id, :receiver_user_id, :body)
  end

end
