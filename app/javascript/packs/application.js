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
  $('#school_type').change(function() {
    let text = $("#school_type option:selected").val();
    if ( text == "小学校" ){
    　$('.school_grade').hide();
    　$('.school_subject').hide();
      $('#elementary_school_grade').fadeIn();
      $('#elementary_subject_select').fadeIn();
    } else if( text == "中学校") {
      $('.school_grade').hide();
      $('.school_subject').hide();
      $('#school_grade').fadeIn();
      $('#subject_select').fadeIn();
    } else if( text == "高校") {
      $('.school_grade').hide();
      $('.school_subject').hide();
      $('#school_grade').fadeIn();
      $('#subject_select').fadeIn();
    } else if( text == "未選択") {
      $('.school_grade').hide();
      $('.school_subject').hide();
    }
  });

});


$(function() {
  $('.school_subject').change(function() {
    let text = $(".school_subject option:selected").val();
    
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
    } else if ( text == "生活") {
      $('.subjectbook').hide();
      $('#lifebooks').fadeIn();
    } else if ( text == "図画工作") {
      $('.subjectbook').hide();
      $('#drawingbooks').fadeIn();
    } else if ( text == "家庭") {
      $('.subjectbook').hide();
      $('#homebooks').fadeIn();
    } else if ( text == "未選択") {
      $('.subjectbook').hide();
    }
  });

});
