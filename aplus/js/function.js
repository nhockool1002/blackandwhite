$(document).ready(function() {
  var section = new Array('div.fontset','.section');
  section = section.join(',');
  //Reset Font Original
  var originalFontSize = $(section).css('font-size');
  $(".resetFont").click(function(){
  $(section).css('font-size', originalFontSize);
  });

  //Increase Font
  $(".increaseFont").click(function(){
  var currentFontSize = $(section).css('font-size');
  var currentFontSizeNum = parseFloat(currentFontSize, 10);
  var newFontSize = currentFontSizeNum*1.2;
  $(section).css('font-size', newFontSize);
  return false;
  });
  // Decrease Font
  $(".decreaseFont").click(function(){
  var currentFontSize = $(section).css('font-size');
  var currentFontSizeNum = parseFloat(currentFontSize, 10);
  var newFontSize = currentFontSizeNum*0.8;
  $(section).css('font-size', newFontSize);
  return false;
  });

  Mousetrap.bind('alt+0', function() {window.location.assign("http://localhost/blackandwhite");}, 'keyup');

  Mousetrap.bind('alt+w', function() {
      var currentFontSize = $(section).css('font-size');
      var currentFontSizeNum = parseFloat(currentFontSize, 10);
      var newFontSize = currentFontSizeNum*1.2;
      $(section).css('font-size', newFontSize);
      return false;
    });

  Mousetrap.bind('alt+r', function() {
  		$(section).css('font-size', originalFontSize);
  	});
  Mousetrap.bind('alt+e', function() {
      var currentFontSize = $(section).css('font-size');
      var currentFontSizeNum = parseFloat(currentFontSize, 10);
      var newFontSize = currentFontSizeNum*0.8;
      $(section).css('font-size', newFontSize);
      return false;
    });

});
