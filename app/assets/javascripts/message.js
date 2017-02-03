// We want to be able to add a new message and have it update the screen right away

$(function(){
  console.log("loaded messages");


  $("#send-message").click(function(){
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
      },
      fail: function() {
        alert( "error" ); 
      }

    })
  });
});