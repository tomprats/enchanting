$(document).ready(function() {
  if($(".home-images").length) {
    var $images = $(".home-images");
    setInterval(function () {
      $images.find(".home-image").first().addClass("hide").appendTo($images);
      $images.find(".home-image").first().removeClass("hide");
    }, 5000);
  }
});
