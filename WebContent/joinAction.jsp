<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ page import="user.UserDAO" %>
<%@ page import="java.io.PrintWriter"%>
<% request.setCharacterEncoding("UTF-8"); %>
<jsp:useBean id="customer" class="user.User" scope="page"/>
<jsp:setProperty name="user" property="ID"/>
<jsp:setProperty name="user" property="Password"/>
<jsp:setProperty name="user" property="Email"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

</head>
<body>
<%
	String id = null;
	if(session.getAttribute("id")!=null);{
	id = (String) session.getAttribute("id");
	}
	if(id != null){
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert(' 로그인 되어 있습니다.')");
		script.println("location.href='index.jsp'");
		script.println("</script>");
	}
		if(customer.getID() == null || customer.getPassword()==null ||  customer.getEmail()==null){
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('빈칸을 채워주세요.')");
			script.println("history.back()");
			script.println("</script>");
		}else{
			UserDAO userDAO = new UserDAO();
			int result = userDAO.join(customer);
			if(result==-1){
				PrintWriter script = response.getWriter();
				script.println("<script>");
				script.println("alert('이미 존재하는 아이디 입니다.')");
				script.println("history.back()");
				script.println("</script>");	
			}else{
				session.setAttribute("userID",customer.getID());
				PrintWriter script = response.getWriter();
				script.println("<script>");
				script.println("location.href = 'index.jsp'");
				script.println("</script>");
			}
		}
	%>	
</body>
</html>
</body>
</html>