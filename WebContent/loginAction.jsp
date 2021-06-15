<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ page import="user.UserDAO"%>
 <%@ page import="java.io.PrintWriter" %>
 <% request.setCharacterEncoding("UTF-8"); %>
 <jsp:useBean id="customer" class="user.User" scope="page" />
 <jsp:setProperty name="user" property="id"/>
 <jsp:setProperty name="user" property="password"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%
				String id=null;
				if(session.getAttribute("id")!=null);{
					id=(String)session.getAttribute("id");
				}
				if(id !=null){
						PrintWriter script=response.getWriter();
						script.println("<script>");
						script.println("alert('로그인 되어 있습니다.')");
						script.println("location.href='customerbmi.jsp' ");
						script.println("</script>");
				}
				UserDAO userDAO = new UserDAO();
				int result = userDAO.login(customer.getID(), customer.getPassword());
				if(result==1){
					session.setAttribute("id", customer.getID());
					PrintWriter script = response.getWriter();
					script.println("<script>");
					script.println("location.href='customerbmi.jsp'");
					script.println("</script>");
				}
					else if(result==0){
						PrintWriter script = response.getWriter();
						script.println("<script>");
						script.println("alert('비밀번호가 틀립니다.')");
						script.println("history.back()");
						script.println("</script>");	
					}
					else if(result==-1){
						PrintWriter script = response.getWriter();
						script.println("<script>");
						script.println("alert('존재하지 않는 아이디입니다.')");
						script.println("history.back()");
						script.println("</script>");	
					}
					else if(result==-2){
						PrintWriter script = response.getWriter();
						script.println("<script>");
						script.println("alert('데이터베이스 오류가 발생했습니다.')");
						script.println("history.back()");
						script.println("</script>");	
					}
	
	%>

</body>
</html>