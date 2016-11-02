$(document).on("turbolinks:load", function() {
  $(".pets-toy-link").on('ajax:success', function(event, response) {
    console.log(response);
  });
});

