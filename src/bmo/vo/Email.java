package bmo.vo;

public class Email {
	private String id;
	private String pwd;
	private String email;
	public Email() {}
	public Email(String tId, String tPwd) { //오버로딩
		this.id=tId;
		this.pwd=tPwd;
		this.email=null;
	}
	
	public String getId()
	{
		return id;
	}
	public void setId(String tId)
	{
		this.id=tId;
	}
	
	public String getPwd()
	{ 
		return pwd;
	}
	public void setPwd(String tPwd)
	{
		this.pwd=tPwd;
	}
	
	public String getEmail()
	{ 
		return email;
	}
	public void setEmail(String tEmail)
	{
		this.email=tEmail;
	}
}
