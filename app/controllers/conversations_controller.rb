class ConversationsController < ApplicationController
  before_action :authenticate_user!

  def index
    @conversations = Conversation.order("created_at desc").all
  end

  def show
    @conversation = Conversation.find(params[:id])
  end

  def new
    @conversation = Conversation.new
  end

private



end
