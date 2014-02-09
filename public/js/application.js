$(document).ready(function() {
  $('#sign-in').on('click', function(){
    $('#sign-in-form').show();
    $('#intro').text("Logging in makes for more survey fun:");
    $('#sign-in').hide();
    $('#sign-up').hide();
  });
  $('#sign-up').on('click', function(){
    $('#sign-up-form').show();
    $('#intro').text("Let's make the magic happen cap'n:");
    $('#sign-up').hide();
    $('#sign-in').hide();
  });
  // See: http://docs.jquery.com/Tutorials:Introducing_$(document).ready()
});
