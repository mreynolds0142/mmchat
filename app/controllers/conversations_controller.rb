class ConversationsController < ApplicationController
  before_action :authenticate_user!

  def index
    @conversations = Conversations.all

  end
end
