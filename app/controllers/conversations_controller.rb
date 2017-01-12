class ConversationsController < ApplicationController
  before_action :authenticate_user!

  def index
    # method to sort messages into conversations

  end
end
