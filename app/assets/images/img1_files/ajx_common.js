//////////////////////////////////////////////////////////
// 投票制御用
//////////////////////////////////////////////////////////
function voteCount(type, pk_id, obj_id, peculiar) {
	post_data = "type=" + encodeURIComponent(type) + "&pk_id=" + pk_id + "&obj_id=" + obj_id + "&peculiar=" + peculiar;
	httpObj = createXMLHttpRequest(voteCountDisplayData);
	if (httpObj) {
		httpObj.open("POST", "/vote/ajx_vote_count.cfm", true);
		httpObj.setRequestHeader("content-type", "application/x-www-form-urlencoded;charset=UTF-8");
		httpObj.send(post_data);
	}
}
function voteCountDisplayData() {
	if ((httpObj.readyState == 4) && (httpObj.status == 200)) {
		res = httpObj.responseText.split(":");
		for(var i=0; i < res.length; i++){//Trim
			res[i] = res[i].replace( /(^\s+)|(\s+$)/g , "");
		}
		switch(res[0]) {
			case "vote_comp":
				var pk_id = res[1];
				if(res[2] != "")	{
					pk_id = pk_id + "_" + res[2];
				}
				document.getElementById("vs_" + pk_id).innerHTML = "投票済";
				document.getElementById("vc_" + pk_id).innerHTML = res[3];
				break;
			case "vote_error":
				/*alert("既に投票済です");*/
				alert("これ以上投票できません");
				break;
			case "member_error":
				alert("ご自身の投稿には投票できません");
				break;
			case "max_error":
				alert("これ以上投票できません");
				break;
			case "vote_max_error":
				alert("既定回数に達した為これ以上の連続した投票はできません");
				break;
			case "login_error":
				document.location.href='/member/regist/';
				break;
			default:
				alert("ERROR!");
		}
	} else {}
}
//////////////////////////////////////////////////////////
// 会員お気に入り登録制御用
//////////////////////////////////////////////////////////
function favoriteUser(member_id) {
	post_data = "member_id=" + member_id;
	httpObj = createXMLHttpRequest(favoriteUserDisplayData);
	if (httpObj) {
		httpObj.open("POST", "/member/view/ajx_favorite_user.cfm", true);
		httpObj.setRequestHeader("content-type", "application/x-www-form-urlencoded;charset=UTF-8");
		httpObj.send(post_data);
	}
}
function favoriteUserDisplayData() {
	if ((httpObj.readyState == 4) && (httpObj.status == 200)) {
		res = httpObj.responseText.replace( /(^\s+)|(\s+$)/g , "");
		switch(res) {
			case "add_comp":
				document.getElementById("MEMBER_FAVORITE").innerHTML = "";
				alert("お気に入り会員に登録しました");
				break;
			case "add_error":
				alert("既に登録済です");
				break;
			case "login_error":
				document.location.href='/member/regist/';
				break;
			default:
				alert("ERROR!");
		}
	} else {
	}
}
//////////////////////////////////////////////////////////
// ファン登録制御用
//////////////////////////////////////////////////////////
function fanUser(member_id) {
	post_data = "member_id=" + member_id;
	httpObj = createXMLHttpRequest(fanUserDisplayData);
	if (httpObj) {
		httpObj.open("POST", "/member/view/ajx_favorite_user.cfm", true);
		httpObj.setRequestHeader("content-type", "application/x-www-form-urlencoded;charset=UTF-8");
		httpObj.send(post_data);
	}
}
function fanUserDisplayData() {
	if ((httpObj.readyState == 4) && (httpObj.status == 200)) {
		res = httpObj.responseText.replace( /(^\s+)|(\s+$)/g , "");
		switch(res) {
			case "add_comp":
				document.getElementById("MEMBER_FAN").innerHTML = '<div class="btnFanAdd selected"><i class="icon-heart"></i>ファン登録する</div>';
				alert("お気に入り会員に登録しました");
				break;
			case "add_error":
				alert("既に登録済です");
				break;
			case "login_error":
				document.location.href='/member/regist/';
				break;
			default:
				alert("ERROR!");
		}
	} else {
	}
}

//////////////////////////////////////////////////////////
// 素材お気に入り登録制御用
//////////////////////////////////////////////////////////
function favoriteSozai(sozai_id) {
	post_data = "sozai_id=" + sozai_id;
	httpObj = createXMLHttpRequest(favoriteSozaiDisplayData);
	if (httpObj) {
		httpObj.open("POST", "/sozai/favorite_sozai/ajx_favorite_sozai.cfm", true);
		httpObj.setRequestHeader("content-type", "application/x-www-form-urlencoded;charset=UTF-8");
		httpObj.send(post_data);
	}
}
function favoriteSozaiDisplayData() {
	if ((httpObj.readyState == 4) && (httpObj.status == 200)) {
		res = httpObj.responseText.split(":");
		for(var i=0; i < res.length; i++){//Trim
			res[i] = res[i].replace( /(^\s+)|(\s+$)/g , "");
		}
		switch(res[0]) {
			case "add_comp":
				alert("お気に入り素材に登録しました");
				break;
			case "add_error":
				alert("既に登録済です");
				break;
			case "login_error":
				document.location.href='/member/regist/';
				break;
			default:
				alert("ERROR!");
		}
	} else {}
}

//////////////////////////////////////////////////////////
// Q&A回答確認制御用
//////////////////////////////////////////////////////////
function answerCheck(answer_id) {
	post_data = "answer_id=" + answer_id;
	httpObj = createXMLHttpRequest(answerCheckDisplayData);
	if (httpObj) {
		httpObj.open("POST", "/member/view/ajx_answer_check.cfm", true);
		httpObj.setRequestHeader("content-type", "application/x-www-form-urlencoded;charset=UTF-8");
		httpObj.send(post_data);
	}
}
function answerCheckDisplayData() {
	if ((httpObj.readyState == 4) && (httpObj.status == 200)) {

		res = httpObj.responseText.split(":");
		for(var i=0; i < res.length; i++){//Trim
			res[i] = res[i].replace( /(^\s+)|(\s+$)/g , "");
		}
		switch(res[0]) {
			case "comp":
				var answer_id = res[1];
				if(res[2] != "")	{
					check_flag = res[2];
				}
				document.getElementById("answer_check_" + answer_id).className = "btnCheck_" + check_flag;
				break;
			default:
				alert("ERROR!");
		}
	} else {}
}


//////////////////////////////////////////////////////////
// BBS書込確認制御用
//////////////////////////////////////////////////////////
function responsesCheck(responses_id) {
	post_data = "responses_id=" + responses_id;
	httpObj = createXMLHttpRequest(responsesCheckDisplayData);
	if (httpObj) {
		httpObj.open("POST", "/member/view/ajx_responses_check.cfm", true);
		httpObj.setRequestHeader("content-type", "application/x-www-form-urlencoded;charset=UTF-8");
		httpObj.send(post_data);
	}
}
function responsesCheckDisplayData() {
	if ((httpObj.readyState == 4) && (httpObj.status == 200)) {

		res = httpObj.responseText.split(":");
		for(var i=0; i < res.length; i++){//Trim
			res[i] = res[i].replace( /(^\s+)|(\s+$)/g , "");
		}
		switch(res[0]) {
			case "comp":
				var responses_id = res[1];
				if(res[2] != "")	{
					check_flag = res[2];
				}
				document.getElementById("responses_check_" + responses_id).className = "btnCheck_" + check_flag;
				break;
			default:
				alert("ERROR!");
		}
	} else {}
}


//////////////////////////////////////////////////////////
// ITEM_IMAGE表示用
//////////////////////////////////////////////////////////
function itemImageDisplayData(httpObj) {
	if ((httpObj.readyState == 4) && (httpObj.status == 200)) {
		res = httpObj.responseText.split("|");
		for(var i=0; i < res.length; i++){//Trim
			res[i] = res[i].replace( /(^\s+)|(\s+$)/g , "");
		}
		document.getElementById(res[0]).src = res[1];
	} else {}
}
function loadingImage(sct, id) {
		document.getElementById(sct + "_" + id).src = '/img/common/loading.gif';
}

//////////////////////////////////////////////////////////
// ログイン制御用
//////////////////////////////////////////////////////////
function globalLogin(args1, args2, args3, args4) {
	if (args3) {
		post_data = "member_mail=" + args1 + "&member_pass=" + args2 + "&key=" + args4 + "&member_never=1";
	} else {
		post_data = "member_mail=" + args1 + "&member_pass=" + args2 + "&key=" + args4 + "&member_never=0";
	}
	httpObj = createXMLHttpRequest(globalLoginDisplayData);
	if (httpObj) {
		httpObj.open("POST", "/member/login/ajx_global_login.cfm", true);
		httpObj.setRequestHeader("content-type", "application/x-www-form-urlencoded;charset=UTF-8");
		httpObj.send(post_data);
	}
}
function globalLoginDisplayData() {
	if ((httpObj.readyState == 4) && (httpObj.status == 200)) {
		res = httpObj.responseText.split(":");
		for(var i=0; i < res.length; i++){
			res[i] = res[i].replace( /(^\s+)|(\s+$)/g , "");
		}
		switch(res[0]) {
			case "success":
				document.location.href='/member/view/';
				break;
			case "key":
				document.location.href='/url_redirect/?key='+res[1];
				break;
			case "mail":
				alert("※正しいE-mail形式で入力してください。");
				break;
			case "pass":
				alert("※半角英数字で入力してください。");
				break;
			case "member":
				alert("※E-mail又はパスワード入力に誤りがあります。");
				break;
			default:
				alert("ERROR!");
		}
	} else {}
}




