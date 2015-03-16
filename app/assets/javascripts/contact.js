$(document).ready(function() {
  $("form").on("ajax:success", function(e, data) {
    $(".contact-error").html(data.message)
  });
});
