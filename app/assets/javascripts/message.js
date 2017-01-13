// We want to be able to add a new message and have it update the screen right away

$(function(){

  $("#send-message").click(function(){
    console.log("Send was clicked");

    var receiverUserId = $("#message_receiver_receiver_id").val();

    var messageBody = $("#messsage-body").val();
    console.log("Receiver:", receiverUserId, "Message:", messageBody)
  });
});
