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
    Mousetrap.bind('alt+0', function() {window.location.assign("../index.php");}, 'keyup');
    Mousetrap.bind('alt+a', function() {window.location.assign("index.php");}, 'keyup');
    Mousetrap.bind('alt+j', function() {window.location.assign("index.php?page=gioithieu");}, 'keyup');
    Mousetrap.bind('alt+c', function() {window.location.assign("index.php?page=danhsachvieclam");}, 'keyup');
    Mousetrap.bind('alt+l', function() {window.location.assign("index.php?page=tailieu");}, 'keyup');
    Mousetrap.bind('alt+n', function() {window.location.assign("index.php?page=danhsachhocbong");}, 'keyup');
    Mousetrap.bind('6', function() {window.location.assign("#menuchinh");}, 'keyup');
    Mousetrap.bind('7', function() {window.location.assign("#menuchinhchinh");}, 'keyup');
    Mousetrap.bind('9', function() {window.location.assign("#noidung");}, 'keyup');

});
