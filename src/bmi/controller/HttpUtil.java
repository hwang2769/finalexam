package bmi.controller;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

public class HttpUtil {
	public static void forward(ServletRequest req, ServletResponse resp, String path)
	{
		try
		{
					RequestDispatcher rd = req.getRequestDispatcher(path);
					rd.forward(req, resp);
		}catch(Exception e)
		{
				System.out.print("HttpUtil error" +e); //e->오류에 대한 정보 전송
		}
	}
}
