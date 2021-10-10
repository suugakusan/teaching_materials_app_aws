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
      $('#post_grade').children().remove();
      $('#school_grade').fadeIn();
      $('#post_grade').append($('<option>').html("未選択").val("未選択"));
      $('#post_grade').append($('<option>').html("学年共通").val("学年共通"));
      $('#post_grade').append($('<option>').html("１年").val("１年"));
      $('#post_grade').append($('<option>').html("２年").val("２年"));
      $('#post_grade').append($('<option>').html("３年").val("３年"));
      $('#post_grade').append($('<option>').html("４年").val("４年"));
      $('#post_grade').append($('<option>').html("５年").val("５年"));
      $('#post_grade').append($('<option>').html("６年").val("６年"));
    } else if( text == "中学校") {
      $('#post_grade').children().remove();
      $('#school_grade').fadeIn();
      $('#post_grade').append($('<option>').html("未選択").val("未選択"));
      $('#post_grade').append($('<option>').html("学年共通").val("学年共通"));
      $('#post_grade').append($('<option>').html("１年").val("１年"));
      $('#post_grade').append($('<option>').html("２年").val("２年"));
      $('#post_grade').append($('<option>').html("３年").val("３年"));
    } else if( text == "高校") {
      $('#post_grade').children().remove();
      $('#school_grade').fadeIn();
      $('#post_grade').append($('<option>').html("未選択").val("未選択"));
      $('#post_grade').append($('<option>').html("学年共通").val("学年共通"));
      $('#post_grade').append($('<option>').html("１年").val("１年"));
      $('#post_grade').append($('<option>').html("２年").val("２年"));
      $('#post_grade').append($('<option>').html("３年").val("３年"));
    } else if( text == "未選択") {
      $('#school_grade').fadeOut();
    }
  });

});


$(function() {
  $(document).on('change', '#subject_select', function() {
    let subjecttext = $("#subject_select  option:selected").val();
    if ( subjecttext == "国語"){
    　$('.subjectbook').hide();
    　$('#school_type').append('#japanesebooks');
      $('#japanesebooks').fadeIn();
    } else if ( subjecttext == "社会") {
      $('.subjectbook').hide();
      $('#societybooks').fadeIn();
    } else if ( subjecttext == "理科") {
      $('.subjectbook').hide();
      $('#sciencebooks').fadeIn();
    } else if ( subjecttext == "音楽") {
      $('.subjectbook').hide();
      $('#musicbooks').fadeIn();
    } else if ( subjecttext == "美術") {
      $('.subjectbook').hide();
      $('#artbooks').fadeIn();
    } else if ( subjecttext == "保体") {
      $('.subjectbook').hide();
      $('#pebooks').fadeIn();
    } else if ( subjecttext == "英語") {
      $('.subjectbook').hide();
      $('#englishbooks').fadeIn();
    } else if ( subjecttext == "生活") {
      $('.subjectbook').hide();
      $('#lifebooks').fadeIn();
    } else if ( subjecttext == "未選択") {
      $('.subjectbook').hide();
    } else if ( subjecttext == "数学") {
      $('.subjectbook').hide();
      $('#mathbooks').fadeIn();
    } else if ( subjecttext == "技家") {
      $('.subjectbook').hide();
      $('#technologybooks').fadeIn();
    }
  });
});

$(function() {
  $(document).on('change', '#elementary_subject_select', function() {
    let subjecttext = $("#elementary_subject_select  option:selected").val();
    if ( subjecttext == "国語"){
    　$('.subjectbook').hide();
      $('#japanesebooks').fadeIn();
    } else if ( subjecttext == "社会") {
      $('.subjectbook').hide();
      $('#societybooks').fadeIn();
    } else if ( subjecttext == "算数") {
      $('.subjectbook').hide();
      $('#mathbooks').fadeIn();
    } else if ( subjecttext == "理科") {
      $('.subjectbook').hide();
      $('#sciencebooks').fadeIn();
    } else if ( subjecttext == "音楽") {
      $('.subjectbook').hide();
      $('#musicbooks').fadeIn();
    } else if ( subjecttext == "美術") {
      $('.subjectbook').hide();
      $('#artbooks').fadeIn();
    } else if ( subjecttext == "保体") {
      $('.subjectbook').hide();
      $('#pebooks').fadeIn();
    } else if ( subjecttext == "英語") {
      $('.subjectbook').hide();
      $('#englishbooks').fadeIn();
    } else if ( subjecttext == "生活") {
      $('.subjectbook').hide();
      $('#lifebooks').fadeIn();
    } else if ( subjecttext == "図画工作") {
      $('.subjectbook').hide();
      $('#drawingbooks').fadeIn();
    } else if ( subjecttext == "家庭") {
      $('.subjectbook').hide();
      $('#homebooks').fadeIn();
    } else if ( subjecttext == "未選択") {
      $('.subjectbook').hide();
    }
  });
});


