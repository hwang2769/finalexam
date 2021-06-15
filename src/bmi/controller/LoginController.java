package bmi.controller;

import java.io.IOException;
import java.net.http.HttpRequest;
import java.net.http.HttpResponse;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bmi.service.Service;

public class LoginController implements Controller {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String id=req.getParameter("id");
		String pwd=req.getParameter("pwd");
		
		
		Service s=Service.getInstance();
		boolean result=s.login(id, pwd); //login이 되어있는지 확인하기 위함
		String path=null;
		if(result)
		{
			HttpSession session=req.getSession();
			session.setAttribute("id", id);
			path="/customerbmi.jsp";
		}else
		{
			path="/join.jsp";
		}
		HttpUtil.forward(req, resp, pwd);
		
	}

}
