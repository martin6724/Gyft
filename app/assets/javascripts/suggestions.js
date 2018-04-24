// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

$(document).on('turbolinks:load', function() {


  $('.right-arrow').click(function(e){
    e.preventDefault()
    var currentQuestionbox = $('.questionbox.active');
    var nextQuestionbox = currentQuestionbox.next();

    currentQuestionbox.fadeOut(300).removeClass('active');
    nextQuestionbox.fadeIn(300).addClass('active');


    if (nextQuestionbox.length == 0) {
      $('.questionbox').first().fadeIn(300).addClass('active');
    }

    if( $('.questionbox.last')[0].className=="questionbox last active") {
      console.log("I'm done");
      $('.right-arrow').hide()
    }
  });


  $('.left-arrow').click(function(e){
    e.preventDefault()
    var currentQuestionbox = $('.questionbox.active');
    var prevQuestionbox = currentQuestionbox.prev();

    currentQuestionbox.fadeOut(300).removeClass('active');
    prevQuestionbox.fadeIn(300).addClass('active');

    if(prevQuestionbox.length == 0) {
      $('.questionbox').last().fadeIn(300).addClass('active');
    }
      $('.right-arrow').show()

  });




})
