// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require activestorage
//= require jquery
//= require jquery_ujs
//= require cocoon
//= require popper
//= require bootstrap-sprockets
//= require moment
//= require fullcalendar
//= require fullcalendar/lang/ja
//= require_tree .



$(function () {
    $(document).ready( function () {

        // カレンダー(貸し出し日変更画面)
        // lengthを呼び出すことで、#calendarが存在していた場合はtrueの処理がされ、無い場合はnillを返す
        if ($('#calendar').length) {
            console.log('http://localhost:3000/owner/lend_days/20/edit.json');

            // 表示
            function eventCalendar() {
                return $('#calendar').fullCalendar({
                });
            };
            // 削除
            function clearCalendar() {
                $('#calendar').html('');
            };
            console.log(location.pathname);
                // イベント
            $('#calendar').fullCalendar({
                events: location.pathname,
                eventColor: '#63ceef',
                lang: 'ja'
            });
        };




        // カレンダーオーナー詳細
        if ($('.owner_calendar').length) {

            // カレンダー繰り返し処理
            $(".owner_calendar").each(function(index) {
                // jsonの取得
            var data = {};
            $.ajaxSetup({ cache: false });
            $.ajax({
                url: location.pathname,
                dataType: 'json',
                async: false,
                success: function(json) {
                    data = json;
                }
            });
                // idの取得
                var id = $(this).attr('id');
                // イベント用の変数
                var eventData = []

                for ( var json of data){
                    for (var key of json){
                        if (id == key["bicycle"]){
                            eventData.push(key)
                        };
                    };
                };

                // 表示
                function eventCalendar() {
                    return $('.owner_calendar').fullCalendar({
                    });
                };
                // 削除
                function clearCalendar() {
                    $('.owner_calendar').html('');
                };

                // イベント
                $(this).fullCalendar({
                    events: eventData,
                    eventColor: '#63ceef',
                    lang: 'ja',
                    height: 500
                });

            });
        };
    });
});
// 契約画面のsubmitボタンを制限
$("#contract_new_submit").prop("disabled", true);

// フォームの開業に合わせて高さを変える
$(function() {
  var $textarea = $('#textarea');
  var lineHeight = parseInt($textarea.css('lineHeight'));
  $textarea.on('input', function(e) {
    var lines = ($(this).val() + '\n').match(/\n/g).length;
    $(this).height(lineHeight * lines);
  });
});

// // フォームの非同期
// $(function() {
//   $(document).on('click', 'input[type=submit]', function() {
//     if ($('input[type=text]').val() == '') {
//       return false;
//     };
//   });
//   // メッセージの受け取り
// $(document).on('ajax:success', 'form', function(e) {
//     console.log(e);
//     $('#message_comment').val('');
//     $('.message_left').prepend('<p>' + e.detail[0] + '</p>');
//   });
// });
$(function(){
    $(document).ready(function(){
      $('.single').slick({
        autoplay: true, //自動再生
      });
    });
});

