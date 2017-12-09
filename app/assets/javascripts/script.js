$( document ).on('turbolinks:load', function() {

  $("#message1").css("background-color", "#FFF5EE");
  $(".form-control").css("background-color", "#FFF5EE");
  $(".message-box").on("keyup", function() {

    var charCount = $(".message-box").val().length;
    console.log(charCount);
    $("#char-count").html(charCount);
    if (charCount > 50) {
      $("#char-count").css("color", "red");
    } else {
      $("#char-count").css("color", "black");
    };
    // in here is where the rest of our code for this Exercise will go
  });
  if ($(".message-box").val().length === 0) {
    $(".message-box").css("border", "1px solid orange");
    $(".form-control").css("border", "1px solid orange");
  } else {

    $('#buttonsubmit').on('click', function() {
      var comment = $('.message-box').val();
      var com = comment.toUpperCase();
      $('#visible-comment').html(com + " Thank you for your message");
      $('.message-box').hide();
      return false;
    });
  }
});

$( document ).on('turbolinks:load', function() {

    ! function(d, s, id) {
      var js, fjs = d.getElementsByTagName(s)[0],
        p = /^http:/.test(d.location) ? 'http' : 'https';
      if (!d.getElementById(id)) {
        js = d.createElement(s);
        js.id = id;
        js.src = p + '://platform.twitter.com/widgets.js';
        fjs.parentNode.insertBefore(js, fjs);
      }
    }(document, 'script', 'twitter-wjs');

  });
