package bmi.controller;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class FrontController extends HttpServlet{
	HashMap<String, Controller> map=null;
	String charset=null;
	
	@Override
	public void init(ServletConfig config) throws ServletException {
		// TODO Auto-generated method stub
		charset=config.getInitParameter("charset");
		map=new HashMap<String,Controller>();
		map.put("/join.do",new JoinController());
		map.put("/login.do", new LoginController());
	}
	
	@Override
		protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		req.setCharacterEncoding(charset);	
		String uri= req.getRequestURI();
		String contextPath = req.getContextPath();
		String path=uri.substring(contextPath.length());
		
		Controller subController = map.get(path);
		subController.execute(req, resp);
	}
}

