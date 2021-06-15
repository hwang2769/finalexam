<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Gaegu&display=swap" rel="stylesheet">
<style type="text/css">
*{font-family: 'Gaegu', cursive;}
.box{
				border-style: solid;
				border-width: 150px;
				border-color: 	#EEE8AA;}

center {font-size: 30px;
			color:#808000;}

input {
          border: 3px solid #556B2F ;
			width: 200px;
			height: 50px;
			font-size: 22px;
			background-color: white;
			font-weight: bold;
			color: 	black;
			text-align:center;
			border-radius: 40px 80px / 80px 40px;
			}
input:hover {color: white;
					background-color:#FDEBC8;}
h        {font-size:120px;
				color:	#808000 ;}

</style>
</head>
<body>
<form action = " login.do"   method="post">
		<center class="box">
		<br/><br/>
		<h>로그인</h><br/>
		I             D : <input type="text"  name="id" /><br><br>
		Password : <input type="password"  name="pwd"  ><br><br>
		<input type="submit"  value="LOGIN">
		<br/><br/>
		</center>
</form>
</body>
</html>