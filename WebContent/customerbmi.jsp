 <br/><%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Gaegu&display=swap" rel="stylesheet">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Black+Han+Sans&family=Do+Hyeon&family=Gaegu&display=swap" rel="stylesheet">
<style type="text/css">

		
center 		{font-size: 50px;
				color: 	#7BA87B ;
				font-weight: bold;
				font-family: 'Gaegu', cursive;}
				
#main { font-family: 'Black Han Sans', sans-serif;
			color: 					#7BA87B;
			font-weight: normal;
			font-size: 120px;
			 text-shadow: 6px 2px 2px gray; 
			 }
			

input  {
				font-family: 'Gaegu', cursive;
				width: 220px;
				height: 50px;
				font-size: 28px;
				text-align:center;
				background-color: white;
				color: 	black ;
				border-radius: 40px 80px / 80px 40px;
			}
input:hover {color: white;
					background-color:#FDEBC8;}

</style>
</head>
<body>	
		<form action="bmical.jsp"  method="post">
		<center>	
		<p id="main">건강챙기기 </p>
		        이름을 입력하세요: <input type="text" name="name"  placeholder="이름을 입력하세요."><br/><br/>
		        키를 입력하세요:   <input type="number" name="height"  placeholder="cm"><br /><br/>
		        몸무게를 입력하세요: <input type="number" name="weight" placeholder="kg"><br /><br/>
		      <input  type="submit"  value="측정하기" >
		       <input type="reset" value="다시 작성" >     
      </center>
      </form>
</body>
