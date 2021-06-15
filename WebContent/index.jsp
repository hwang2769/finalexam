<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Do+Hyeon&display=swap" rel="stylesheet">

<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Black+Han+Sans&family=Do+Hyeon&family=Gaegu&family=Staatliches&display=swap" rel="stylesheet">

<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Black+Han+Sans&family=Gaegu&family=Open+Sans+Condensed:ital,wght@1,300&display=swap" rel="stylesheet">
<style type="text/css">

.box01 {
				border-style: solid;
				border-width: 4px;
				border-color: #556B2F;
				}

center {font-size:120px;
				color:#808000;
				font-family: 'Do Hyeon', sans-serif;}
#first {font-family: 'Staatliches', cursive;
			font-size: 150px;}
#bmimea{font-family: 'Open Sans Condensed', sans-serif;}
button {
			width: 200px;
			height: 40px;
			font-size: 21px;
			font-family: 'Do Hyeon', sans-serif;
			}
#bt_type1 {margin-right: -8px;}
#bt_type2 {margin-left: -5px;}
#bt_group button { border: 1px solid #556B2F ;
									background-color: rgba(0,0,0,0);
									color: #556B2F;
									padding:5px;
									border-top-left-radius:5px;
									border-bottom-left-radius:5px;
									border-top-right-radius:5px;
									border-bottom-right-radius:5px;
									margin-right:-4px;
									margin-legt:-4px;}
#bt_group button:hover { color: white;
												background-color:#556B2F ;}
										
</style>
</head>
<body>
<center class="box01">
	<p id="first">HELLO!</p>
	<h id="bmimea">BMI measurement</h>
	<div id="bt_group">
	<button  id ="bt_type1" onclick="location.href='join.jsp'">회원가입</button>
	<button  id ="bt_type2" onclick="location.href='login.jsp'">로그인</button>
	</div>
	<br/><br/><br><br/>
</center>
</body>
</html>