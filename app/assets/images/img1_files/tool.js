//FORM要素URL静的化
function change_static_url(formName, notSplit){
	var form = document.forms[formName];
	var elm = form.elements
	var url = "";
	for(i=0; i < elm.length; i++){
		if(elm[i].value != ""){
			if((elm[i].type == 'radio' && elm[i].checked == true) || (elm[i].type != 'radio' && elm[i].type != 'button')) {
				if(elm[i].name == notSplit){
					url = url + elm[i].value + '/';
				}else{
					url = url + elm[i].name + '_' + elm[i].value + '/';
				}
			}
		}
	}
	form.action = form.action + encodeURI(url);
	form.submit();
}

// 
var isPressOnce = false;

//FORM要素URL静的化
function change_static_url2(formName, notSplit){
	if (!isPressOnce) {
		var form = document.forms[formName];
		var elm = form.elements
		var url = "";
		for(i=0; i < elm.length; i++){
			if(elm[i].value != ""){
				if((elm[i].type == 'radio' && elm[i].checked == true) || (elm[i].type != 'radio' && elm[i].type != 'button')) {
					if(elm[i].name == notSplit){
						url = url + elm[i].value + '/';
					}else{
						url = url + elm[i].name + '_' + elm[i].value + '/';
					}
				}
			}
		}
		form.action = form.action + encodeURI(url);
		form.submit();
		isPressOnce = true;
	}
}


/*---------------------------------------------------------------------------
 「お気に入りに追加」対応
---------------------------------------------------------------------------*/
function addBookmark(title, url) {
	// FireFox用
	if (window.sidebar) {
		window.sidebar.addPanel(title, url, "");
	// IE用
	} else if (document.all) {
		window.external.AddFavorite(url, title);
	// Other
	} else {
		alert("このブラウザへのお気に入り追加ボタンは、\nGoogle Chrome/Safari等には対応しておりません。\n\nGoogle Chrome/Safariの場合は、\nCtrlキーとDキーを同時に押してお気に入りに追加してください。\n\nその他の場合は手動でお気に入りへ追加してください。");
		return true;
	}
}
