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
      $('#post_subject_id').children().remove();
      $('#subject_select').fadeIn();
      $('#post_subject_id').append($('<option>').html("未選択").val("未選択"));
      $('#post_subject_id').append($('<option>').html("国語").val("国語"));
      $('#post_subject_id').append($('<option>').html("社会").val("社会"));
      $('#post_subject_id').append($('<option>').html("算数").val("算数"));
      $('#post_subject_id').append($('<option>').html("理科").val("理科"));
      $('#post_subject_id').append($('<option>').html("英語").val("英語"));
      $('#post_subject_id').append($('<option>').html("音楽").val("音楽"));
      $('#post_subject_id').append($('<option>').html("保体").val("保体"));
      $('#post_subject_id').append($('<option>').html("家庭").val("家庭"));
      $('#post_subject_id').append($('<option>').html("生活").val("生活"));
      $('#post_subject_id').append($('<option>').html("図画工作").val("図画工作"));
    } else if( text == "中学校") {
      $('#post_grade').children().remove();
      $('#school_grade').fadeIn();
      $('#post_grade').append($('<option>').html("未選択").val("未選択"));
      $('#post_grade').append($('<option>').html("学年共通").val("学年共通"));
      $('#post_grade').append($('<option>').html("１年").val("１年"));
      $('#post_grade').append($('<option>').html("２年").val("２年"));
      $('#post_grade').append($('<option>').html("３年").val("３年"));
      $('#post_subject_id').children().remove();
      $('#subject_select').fadeIn();
      $('#post_subject_id').append($('<option>').html("未選択").val("未選択"));
      $('#post_subject_id').append($('<option>').html("国語").val("国語"));
      $('#post_subject_id').append($('<option>').html("社会").val("社会"));
      $('#post_subject_id').append($('<option>').html("数学").val("数学"));
      $('#post_subject_id').append($('<option>').html("理科").val("理科"));
      $('#post_subject_id').append($('<option>').html("英語").val("英語"));
      $('#post_subject_id').append($('<option>').html("音楽").val("音楽"));
      $('#post_subject_id').append($('<option>').html("保体").val("保体"));
      $('#post_subject_id').append($('<option>').html("美術").val("美術"));
      $('#post_subject_id').append($('<option>').html("技家").val("技家"));
    } else if( text == "高校") {
      $('#post_grade').children().remove();
      $('#school_grade').fadeIn();
      $('#post_grade').append($('<option>').html("未選択").val("未選択"));
      $('#post_grade').append($('<option>').html("学年共通").val("学年共通"));
      $('#post_grade').append($('<option>').html("１年").val("１年"));
      $('#post_grade').append($('<option>').html("２年").val("２年"));
      $('#post_grade').append($('<option>').html("３年").val("３年"));
      $('#post_subject_id').children().remove();
      $('#subject_select').fadeIn();
      $('#post_subject_id').append($('<option>').html("未選択").val("未選択"));
      $('#post_subject_id').append($('<option>').html("国語").val("国語"));
      $('#post_subject_id').append($('<option>').html("社会").val("社会"));
      $('#post_subject_id').append($('<option>').html("数学").val("数学"));
      $('#post_subject_id').append($('<option>').html("理科").val("理科"));
      $('#post_subject_id').append($('<option>').html("英語").val("英語"));
      $('#post_subject_id').append($('<option>').html("音楽").val("音楽"));
      $('#post_subject_id').append($('<option>').html("保体").val("保体"));
      $('#post_subject_id').append($('<option>').html("美術").val("美術"));
      $('#post_subject_id').append($('<option>').html("技家").val("技家"));
    } else if( text == "未選択") {
      $('#school_grade').fadeOut();
      $('#subject_select').fadeOut();
      $('#subjectbook').fadeOut();
    }
  });

});


$(function() {
  $(document).on('change', '#subject_select', function() {
    let subjecttext = $("#subject_select  option:selected").val();
    if ( subjecttext == "国語"){
      $('#post_schoolbook').children().remove();
      $('#subjectbook').fadeIn();
      $('#post_schoolbook').append($('<option>').html("未選択").val("未選択"));
      $('#post_schoolbook').append($('<option>').html("東京書籍").val("東京書籍"));
      $('#post_schoolbook').append($('<option>').html("三省堂").val("三省堂"));
      $('#post_schoolbook').append($('<option>').html("教育出版").val("教育出版"));
      $('#post_schoolbook').append($('<option>').html("光村図書出版").val("光村図書出版"));
    } else if ( subjecttext == "社会") {
      $('#post_schoolbook').children().remove();
      $('#subjectbook').fadeIn();
      $('#post_schoolbook').append($('<option>').html("未選択").val("未選択"));
      $('#post_schoolbook').append($('<option>').html("東京書籍").val("東京書籍"));
      $('#post_schoolbook').append($('<option>').html("教育出版").val("教育出版"));
      $('#post_schoolbook').append($('<option>').html("帝国書院").val("帝国書院"));
      $('#post_schoolbook').append($('<option>').html("山川出版社").val("山川出版社"));
      $('#post_schoolbook').append($('<option>').html("日本文教出版").val("日本文教出版"));
      $('#post_schoolbook').append($('<option>').html("自由社").val("自由社"));
      $('#post_schoolbook').append($('<option>').html("育鵬社").val("育鵬社"));
      $('#post_schoolbook').append($('<option>').html("清水書院").val("清水書院"));
    } else if ( subjecttext == "理科") {
      $('#post_schoolbook').children().remove();
      $('#subjectbook').fadeIn();
      $('#post_schoolbook').append($('<option>').html("未選択").val("未選択"));
      $('#post_schoolbook').append($('<option>').html("東京書籍").val("東京書籍"));
      $('#post_schoolbook').append($('<option>').html("教育出版").val("教育出版"));
      $('#post_schoolbook').append($('<option>').html("大日本図書").val("大日本図書"));
      $('#post_schoolbook').append($('<option>').html("学校図書").val("学校図書"));
      $('#post_schoolbook').append($('<option>').html("啓林館").val("啓林館"));
    } else if ( subjecttext == "音楽") {
      $('#post_schoolbook').children().remove();
      $('#subjectbook').fadeIn();
      $('#post_schoolbook').append($('<option>').html("未選択").val("未選択"));
      $('#post_schoolbook').append($('<option>').html("教育出版").val("教育出版"));
      $('#post_schoolbook').append($('<option>').html("教育芸術社").val("教育芸術社"));
    } else if ( subjecttext == "美術") {
      $('#post_schoolbook').children().remove();
      $('#subjectbook').fadeIn();
      $('#post_schoolbook').append($('<option>').html("未選択").val("未選択"));
      $('#post_schoolbook').append($('<option>').html("光村図書出版").val("光村図書出版"));
      $('#post_schoolbook').append($('<option>').html("日本文教出版").val("日本文教出版"));
      $('#post_schoolbook').append($('<option>').html("開隆堂出版").val("開隆堂出版"));
    } else if ( subjecttext == "保体") {
      $('#post_schoolbook').children().remove();
      $('#subjectbook').fadeIn();
      $('#post_schoolbook').append($('<option>').html("未選択").val("未選択"));
      $('#post_schoolbook').append($('<option>').html("東京書籍").val("東京書籍"));
      $('#post_schoolbook').append($('<option>').html("大日本図書").val("大日本図書"));
      $('#post_schoolbook').append($('<option>').html("大修館書店").val("大修館書店"));
      $('#post_schoolbook').append($('<option>').html("学研教育みらい").val("学研教育みらい"));
    } else if ( subjecttext == "英語") {
      $('#post_schoolbook').children().remove();
      $('#subjectbook').fadeIn();
      $('#post_schoolbook').append($('<option>').html("未選択").val("未選択"));
      $('#post_schoolbook').append($('<option>').html("教育出版").val("教育出版"));
      $('#post_schoolbook').append($('<option>').html("光村図書出版").val("光村図書出版"));
      $('#post_schoolbook').append($('<option>').html("啓林館").val("啓林館"));
    } else if ( subjecttext == "生活") {
      $('#post_schoolbook').children().remove();
      $('#subjectbook').fadeIn();
      $('#post_schoolbook').append($('<option>').html("未選択").val("未選択"));
      $('#post_schoolbook').append($('<option>').html("東京書籍").val("東京書籍"));
      $('#post_schoolbook').append($('<option>').html("教育出版").val("教育出版"));
      $('#post_schoolbook').append($('<option>').html("光村図書出版").val("光村図書出版"));
      $('#post_schoolbook').append($('<option>').html("日本文教出版").val("日本文教出版"));
      $('#post_schoolbook').append($('<option>').html("大日本図書").val("大日本図書"));
      $('#post_schoolbook').append($('<option>').html("学校図書").val("学校図書"));
      $('#post_schoolbook').append($('<option>').html("啓林館").val("啓林館"));
      $('#post_schoolbook').append($('<option>').html("信州教育出版社").val("信州教育出版社"));
    } else if ( subjecttext == "数学") {
      $('#post_schoolbook').children().remove();
      $('#subjectbook').fadeIn();
      $('#post_schoolbook').append($('<option>').html("未選択").val("未選択"));
      $('#post_schoolbook').append($('<option>').html("東京書籍").val("東京書籍"));
      $('#post_schoolbook').append($('<option>').html("教育出版").val("教育出版"));
      $('#post_schoolbook').append($('<option>').html("日本文教出版").val("日本文教出版"));
      $('#post_schoolbook').append($('<option>').html("大日本図書").val("大日本図書"));
      $('#post_schoolbook').append($('<option>').html("学校図書").val("学校図書"));
      $('#post_schoolbook').append($('<option>').html("啓林館").val("啓林館"));
      $('#post_schoolbook').append($('<option>').html("数研出版").val("数研出版"));
    } else if ( subjecttext == "技家") {
      $('#post_schoolbook').children().remove();
      $('#subjectbook').fadeIn();
      $('#post_schoolbook').append($('<option>').html("未選択").val("未選択"));
      $('#post_schoolbook').append($('<option>').html("東京書籍").val("東京書籍"));
      $('#post_schoolbook').append($('<option>').html("開隆堂出版").val("開隆堂出版"));
      $('#post_schoolbook').append($('<option>').html("教育図書").val("教育図書"));
    } else if ( subjecttext == "図画工作") {
      $('#post_schoolbook').children().remove();
      $('#subjectbook').fadeIn();
      $('#post_schoolbook').append($('<option>').html("未選択").val("未選択"));
      $('#post_schoolbook').append($('<option>').html("日本文教出版").val("日本文教出版"));
      $('#post_schoolbook').append($('<option>').html("開隆堂出版").val("開隆堂出版"));
    } else if ( subjecttext == "家庭") {
      $('#post_schoolbook').children().remove();
      $('#subjectbook').fadeIn();
      $('#post_schoolbook').append($('<option>').html("未選択").val("未選択"));
      $('#post_schoolbook').append($('<option>').html("東京書籍").val("東京書籍"));
      $('#post_schoolbook').append($('<option>').html("開隆堂出版").val("開隆堂出版"));
    } else if ( subjecttext == "算数") {
      $('#post_schoolbook').children().remove();
      $('#subjectbook').fadeIn();
      $('#post_schoolbook').append($('<option>').html("未選択").val("未選択"));
      $('#post_schoolbook').append($('<option>').html("東京書籍").val("東京書籍"));
      $('#post_schoolbook').append($('<option>').html("教育出版").val("教育出版"));
      $('#post_schoolbook').append($('<option>').html("日本文教出版").val("日本文教出版"));
      $('#post_schoolbook').append($('<option>').html("大日本図書").val("大日本図書"));
      $('#post_schoolbook').append($('<option>').html("学校図書").val("学校図書"));
      $('#post_schoolbook').append($('<option>').html("啓林館").val("啓林館"));
      $('#post_schoolbook').append($('<option>').html("数研出版").val("数研出版"));
    } else if ( subjecttext == "未選択") {
      $('#post_schoolbook').children().remove();
      $('#subjectbook').fadeOut();
    }
  });
});


