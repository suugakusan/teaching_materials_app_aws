// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import "channels"
import "jquery"

var jQuery = require('jquery')
global.$ = global.jQuery = jQuery;
window.$ = window.jQuery = jQuery;

Rails.start()
Turbolinks.start()
/*global $*/

$(function() {
  $('#area').change(function() {
    let text = $("#area option:selected").val();
    
    if ( text == "国語"){
    　$('.subjectbook').hide();
      $('#japanesebooks').fadeIn();
    } else if ( text == "社会") {
      $('.subjectbook').hide();
      $('#societybooks').fadeIn();
    } else if ( text == "数学") {
      $('.subjectbook').hide();
      $('#mathbooks').fadeIn();
    } else if ( text == "理科") {
      $('.subjectbook').hide();
      $('#sciencebooks').fadeIn();
    } else if ( text == "音楽") {
      $('.subjectbook').hide();
      $('#musicbooks').fadeIn();
    } else if ( text == "美術") {
      $('.subjectbook').hide();
      $('#artbooks').fadeIn();
    } else if ( text == "保体") {
      $('.subjectbook').hide();
      $('#pebooks').fadeIn();
    } else if ( text == "技家") {
      $('.subjectbook').hide();
      $('#technologybooks').fadeIn();
    } else if ( text == "英語") {
      $('.subjectbook').hide();
      $('#englishbooks').fadeIn();
    }
  });

});
