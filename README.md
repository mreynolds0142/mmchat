# mmchat

User logs in and can send chat messages to other users.

Other users log in and can see messages from original user.

## Things we need
  Database to keep messages
    message model - create messages table
      2 users: receiver and sender
      message body
      date & time
  Authenticate for user login
  Need view to display messages
    Only show messages for logged in user
    Only show messages from specified user
  Need view to create a message
    create a form
  Need controller to submit message - Messages controller