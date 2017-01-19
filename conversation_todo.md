Want a conversation
has many messages
has many users (2 or more)
every message starts or continues a conversation
  start conversation if this sender has not talked to receiver
  continue conversation if sender has talked to receiver
  When create a new message check to see if this sender has talked (sent or rec'vd message) to this receiver


  Conversation controller
  login - call /Conversations
  index with conversation.all

conversations route and conversations/:otherside_user_id

  Conversation Model
  has many messages

  MEssages Model
  need migration to add conversation id to messages tables
  belongs to a conversation

  Update create message to either add to existing conversation or create brand new conversation

  UI
    list of conversations
    link to create new conversation
  New conversation screen = new messasge screen
  Edit conversation screen = display list of messages with a form to add a new message
    conversation/edit/4
      conv controller edit method
      retrieve conversation using id  @conversation
      retreive all messages for conversations  @conversations.messages
