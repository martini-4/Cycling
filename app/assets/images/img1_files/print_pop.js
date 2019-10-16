// JavaScript Document
//---------------------------------------------------------------------------
// 印刷用ページのポップアップ
//---------------------------------------------------------------------------
function PopWin(url,name) {
w = 650;
h = screen.availHeight;
l = 0;
t = 0;
nw = window.open(url,name,'width='+w+',height='+h+',left='+l+',top='+t+',resizable=yes,scrollbars=yes');
if (navigator.userAgent.indexOf('Firefox') != -1) {
nw.focus();
}
}