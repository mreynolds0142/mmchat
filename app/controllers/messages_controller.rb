class MessagesController < ApplicationController
  before_action :authenticate_user!
  def index
    # only see messages I sent or messages to messages
    @messages = Message.where("receiver_user_id = ? OR sender_user_id = ?",
      current_user.id, current_user.id).order("created_at desc")

  end

  def new
    @message = Message.new
  end

  def create
    # if have conversation id in params, use this to set conversation id on new message
    # else make new conversation
    if message_params[:conversation_id].present?
      @message = Message.new(message_params)
    else
      @conversation = Conversation.create!(sender_user_id: message_params[:sender_user_id],
        receiver_user_id: message_params[:receiver_user_id])
      @message = Message.new(message_params)
      @message.conversation_id=@conversation.id
    end

    if @message.save
      respond_to do |format|
        format.html {redirect_to conversation_path(@conversation)}
        format.json {
          json_content = render_to_string partial: "messages/display.html.erb", locals: {message: @message}, layout: false
          render json: {
            content: json_content,
            status: :ok
          }
        }
      end
    else
      render :new
    end

  end

  def show
    @messages = Message.all
  end

  private

  def message_params
    params.require(:message).permit(:sender_user_id, :receiver_user_id, :body, :conversation_id)
  end

end
