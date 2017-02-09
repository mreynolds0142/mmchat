// We want to be able to add a new message and have it update the screen right away

var Message = {
  submit: function(){
    console.log("Send was clicked");

    var senderUserId = $("#sender_user_id").val();
    var receiverUserId = $("#message_receiver_receiver_id").val();

    var messageBody = $("#messsage-body").val();
    var postData = {"message":{
      "sender_user_id": senderUserId,
      "receiver_user_id": receiverUserId,
      "body": messageBody
    }};
    console.log("postData: ", postData);
    $.ajax({
      url: "/messages",
      data: postData,
      type: "post",
      dataType: "json",
      // contentType: "application/json",
      success: function(data){
        console.log("data: ", data);
        // Handle the response here
        // 1. Use a selector to find your list of messages.
        //    Hint: All of the messages are in an unorderd list (ul).
        //    So you can get the list of messages by selecting the list $('ul#js-message-list')
        $("ul#js-message-list").append(data);
        // 2. Add a message to the list. The response from the controller looks like this:
        //   <li>...message content...</li>
        //   You want to "append" this content to the your ul list. Google search jQuery append for how to do this
      },
      fail: function() {
        alert( "error" );
      }

    }) 
  }
}

$(function(){
  console.log("loaded messages");

  $("form").keypress(function(e){
    if(e.which == 13) {
      Message.submit();
      return false;
    }
  })
  $("#send-message").click(function(){
    Message.submit();
  });
});
