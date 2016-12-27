class Message < ActiveRecord::Base
  belongs_to :sender, class_name: "User", foreign_key: "sender_user_id"
  belongs_to :receiver, class_name: "User", foreign_key: "receiver_user_id"

end
