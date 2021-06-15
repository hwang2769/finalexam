<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
  <% request.setCharacterEncoding("euc-kr"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Gaegu&display=swap" rel="stylesheet">
<style type="text/css">
#intro {font-family: 'Gaegu', cursive;
	font-size: 40px;
	vertical-align: middle;
	text-align:center;
	font-weight: bold;
	}
	
#bt_type {border: 1px solid #556B2F ;
				background-color: rgba(0,0,0,0);
				color: #556B2F;
				padding:5px;
				border-top-left-radius:5px;
				border-bottom-left-radius:5px;
				border-top-right-radius:5px;
				border-bottom-right-radius:5px;
				margin-right:-4px;
				margin-legt:-4px;
				font-family: 'Gaegu', cursive;
				font-size: 30px;
				}
#bt_type button:hover { color: white;
										background-color:#556B2F ;}
</style>
				
</head>
<body>
	
		<% 
			String Aname=request.getParameter("name");
			
			String Aheight = request.getParameter("height");
            String Aweight = request.getParameter("weight");
         
           	double Bheight = Double.parseDouble(Aheight);
            double Bweight = Double.parseDouble(Aweight);

            Bheight =Bheight/100;

            double bmi = Bweight / (Bheight*Bheight);
		%>
		<br/><br/>
			<div id="intro">				
			<p>BMI 결과 </p>
			<%=Aname %>님의 BMI는 <%=bmi %> % 
			<%if (bmi >25) %> 비만입니다. 
			<%if (bmi >20 && bmi<=25) %> 표준입니다.
			<%if (bmi  <=20) %> 마름입니다.
			</div>
			
			<center>
			 <br/> <br/>
			<button  id ="bt_type" onclick="location.href='customerbmi.jsp'">재입력</button>
			</center>
		
</body>
</html>