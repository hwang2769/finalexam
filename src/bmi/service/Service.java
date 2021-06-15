package bmi.service;

import bmo.vo.Email;
import user.User;
import user.UserDAO;

public class Service {

	
	private static Service service=new Service();
	private Service() {}
	private UserDAO dao=UserDAO.getInstance();
	public static Service getInstance()
	{
		return service;
	}
	public void join(User email) {
		dao.join(email);
	}
	public boolean login(String id, String pwd) {
		return false;
		// TODO Auto-generated method stub

	}
}


