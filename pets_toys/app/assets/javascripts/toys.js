$(document).on("turbolinks:load", function() {
  $(".pet-toy-link").on('ajax:success', function(event, response) {
    console.log(response);
  });
});

