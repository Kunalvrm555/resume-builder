//= require clipboard
//= require jquery
//= require jquery_ujs
// alert("HEY");
$(document).ready(function () {

  var clipboard = new Clipboard('.clipboard-btn');
  console.log(clipboard);

  var elem = document.getElementById("btn1");
  elem.addEventListener("click", function () {
    elem.innerHTML = "Copied ";
  });;
});

// var $main = $('main');

// if (id = $main.data('profile-id'))
//     return $main;
//     $(document).on('click', '.', function() {
//         var text;
//         if (text = this.getAttribute('data-clipboard-text')) {
//           copyText(text);
//         } 

