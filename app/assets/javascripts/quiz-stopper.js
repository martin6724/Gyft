$(document).on('turbolinks:load', function() {
  $('#home_form').submit(function(e){
    if ($('.age:checked').length == 0) {
      e.preventDefault();
      alert("Select an age!");
    }
  });
});
