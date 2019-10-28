
// ページTOPへ
var scrj = 1;
	function softScrollBack() {
	if(navigator.appName == "Microsoft Internet Explorer" && document.compatMode == "CSS1Compat") {
	var scdist = document.body.parentNode.scrollTop;
	} else {
	var scdist = document.body.scrollTop;
	}
	if(scrj<50 && scdist) {
	scdist = (scdist>2) ? Math.ceil(scdist*.2) : 1;
	scrj++;
	scrollBy(0,-scdist);
	setTimeout("softScrollBack()",20);
	} else {
	scrollTo(0,0);
	scrj = 1;
	}
}


// お気に入りに追加　Firefoxにも対応
function addBookmark(title,url) { 
    if (window.sidebar) { 
        window.sidebar.addPanel(title, url,""); 
    } else if( document.all ) { 
        window.external.AddFavorite( url, title); 
    } else if( window.opera && window.print ) { 
        return true; 
    } 
}