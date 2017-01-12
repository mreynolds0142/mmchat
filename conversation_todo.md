Want a conversation
has many messages
has many users (2 or more)
every message starts or continues a conversation
  start conversation if this sender has not talked to receiver
  continue conversation if sender has talked to receiver
  When create a new message check to see if this sender has talked (sent or rec'vd message) to this receiver

Create method for:
  Message.where(sender_user_id =sender_user_id) and receiver = receiver and sender=receiver or receiver = sender

No model - just Conversation controller
  login - call /Conversations
  screen to list sender/receiver pairs (list of names)
  click on that pair - returns all messages in that conversation

conversations route and conversations/:otherside_user_id
