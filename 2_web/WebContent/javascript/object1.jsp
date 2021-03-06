<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>object1</title>
<link rel='stylesheet' type='text/css' href='mycss.css'/>
<script>
function $(id){
	return document.getElementById(id);
}

window.onload=function(){
	var ff = document.frm;
	var r = $('result');
	
	//리터럴 타입1
	ff.obj1.onclick = function(){
		var o = {};
		
		o.mid = ff.mid.value;
		o.pwd = ff.pwd.value;
		o.gu = (ff.gu[0].checked)? ff.gu[0].value : ff.gu[1].value;
		
		r.innerHTML = '<li>' + o.mid
		            + '<li>' + o.pwd
		            + '<li>' + o.gu;
	}
	
	//리터널 타입2
	ff.obj2.onclick = function(){
		// 객체 정의-----------------------------
		var o = {};
		o.setData = function(mid, pwd, gu){
			this.mid = mid;
			this.pwd = pwd;
			this.gu = gu;
		}; 
		// --------------------------------
		
		var mid = ff.mid.value;
		var pwd = ff.pwd.value;
		var gu  = (ff.gu[0].checked)? ff.gu[0].value : ff.gu[1].value;
		
		o.setData(mid, pwd, gu);
		
		r.innerHTML = '<h4>리터털 type 2</h4>'
		            + '<li>' + o.mid
		            + '<li>' + o.pwd
		            + '<li>' + o.gu;
	}
	
	//리터널 타입3(setter/getter)
	ff.obj3.onclick = function(){
		
		// 리터널 타입의 객체와 setter/getter정의-------
		var o = {};
		o.setMid = function(mid){ this.mid = mid;};
		o.setPwd = function(pwd){ this.pwd = pwd;};
		o.setGu  = function(gu){ this.gu = gu;};
		
		o.getMid = function(){ return this.mid; };
		o.getPwd = function(){ return this.pwd;};
		o.getGu  = function(){ return this.gu; };
		// 정의 끝 ------------------------------------
		
		var gu = (ff.gu[0].checked)? ff.gu[0].value : ff.gu[1].value;
		o.setMid(ff.mid.value);
		o.setPwd(ff.pwd.value);
		o.setGu(gu);
		
		r.innerHTML = '<h4>리터털 type 3</h4>'
            + '<li>' + o.getMid()
            + '<li>' + o.getPwd()
            + '<li>' + o.getGu();
	}
}
</script>
</head>
<body>
<h3 id='title'>
폼에 입력된 자료를 사용하여 자바스크립트의 객체를 생성 후 출력
</h3>

<form name='frm' method='post'>
	<label>아이디</label>
	<input type='text' size='8' name='mid' placeholder='아이디' value='p001'/><br/>
	<label>암호</label>
	<input type='password' size='10' name='pwd' placeholder='암호' value='1111'/><br/>
	<label>회원 구분</label>
	<label><input type='radio' name='gu' checked value='회원'>회원</label>
	<label><input type='radio' name='gu' value='비회원'>비회원</label>

	<p/>
	<input type='button' value='OBJ1' name='obj1'/>
	<input type='button' value='OBJ2' name='obj2'/>
	<input type='button' value='OBJ3' name='obj3'/>
</form>
<div id='result'></div>

</body>
</html>









