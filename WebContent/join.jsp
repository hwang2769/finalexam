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
				border-color: 	#EEE8AA;
				}
				
center {font-size: 35px; 
			color:#808000;}

input {
 			border: 3px solid #556B2F ;
			width: 200px;
			height: 50px;
			font-size: 22px;
			text-align:center;
			background-color:white;
			border-radius: 40px 80px / 80px 40px;
			}
input:hover {color: white;
					background-color:#FDEBC8;}
										
h        {font-size:120px;
				color:#808000  ;
			}
</style>
</head>
<body>
		<form action = "join.do"   method="post">
		
		<center class="box">
		<br/><br/>
		<h>회원가입</h><br/>
		I             D : <input type="text"  name="id"  placeholder="영문/숫자 포함"/><br><br>
		Password : <input type="password"  name="pwd"  placeholder="영문/숫자 8자 이상" ><br><br>
		Email: <input type="email" name="email" placeholder="abcde@example.com"><br><br>
		<input type="submit" value="JOIN">
		<br/><br/>
		</center>
</form>
</body>
</html>