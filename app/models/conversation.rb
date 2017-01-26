class Conversation < ActiveRecord::Base

  has_many :users
  has_many :messages

  def label(user_id)
    # if the user_id matches sender_user_id
    # return the receiver else return the sender
    if user_id == sender_user_id
      return receiver.email
    else
      return sender.email
    end
  end

  def receiver
    User.find(receiver_user_id)
  end

  def sender
    User.find(sender_user_id)
  end
end
