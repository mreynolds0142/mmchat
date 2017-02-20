class ConversationsController < ApplicationController
  before_action :authenticate_user!

  def index
    @conversations = Conversation.all
  end

  def show
    @conversation = Conversation.find(params[:id])
  end

  def new
    @conversation = Conversation.new
  end


end
