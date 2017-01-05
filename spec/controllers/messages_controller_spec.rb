require 'rails_helper'

describe MessagesController do
  describe 'create' do
    let(:sender){ User.create(email: 'test@example.com', password: 'abcd1234', password_confirmation: 'abcd1234') }
    let(:receiver){ User.create(email: 'receiver@example.com', password: 'abcd1234', password_confirmation: 'abcd1234') }

    before do
      sign_in sender
    end

    it 'adds a message to the database' do
      post :create, message: {
        "sender_user_id"=> sender.id,
        "receiver_user_id"=> receiver.id,
        "body"=>"Hey Buddy"
      }
      expect(response).to have_http_status(:redirect)
      expect(response).to redirect_to("/messages")
    end
  end
end
