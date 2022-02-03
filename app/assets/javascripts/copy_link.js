//= require clipboard
//= require jquery
//= require jquery_ujs

const { profile } = require("webpack/lib/node/nodeConsole");

// alert("HEY");
$(document).ready(function(){  
  
    var clipboard = new Clipboard('.clipboard-btn');
   
    var my_var = profile.name 
    console.log(my_var)
   clipboard.text =  
    console.log("hello")   
  });

// var $main = $('main');

// if (id = $main.data('profile-id'))
//     return $main; 
//     $(document).on('click', '.', function() {
//         var text;
//         if (text = this.getAttribute('data-clipboard-text')) {
//           copyText(text);
//         } 

