package struts.android;

import hibernate.HibernateSessionFactory;
import Service.PersonService;

import java.io.IOException;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.ServletResponseAware;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.opensymphony.xwork2.ActionSupport;

import entity.Person;


public class LoginAction extends ActionSupport implements 
ServletRequestAware,ServletResponseAware {
/**
* 
*/
  private static final long serialVersionUID = 1L;

  private HttpServletRequest request;
  private HttpServletResponse response;
  
    private String account;
	private String password;
	



  public void  login(){  
	  
	  PersonService ps=new PersonService();
		Person person=ps.getPerson(account, password);
		if(person!=null){
			System.out.println("---------"+person.getAccount()+"-------------");
			//session.put("person", person);
			try {
				this.response.getOutputStream().write("YES".getBytes());
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		else
		{
			try {
				this.response.getOutputStream().write("NO".getBytes());
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
   }
  
  public void  signin(){  
	    PersonService ps=new PersonService();
	    Person signed=ps.findPersonByAccount(account);
	    if(signed!=null){
	    	try {
				this.response.getOutputStream().write("NO".getBytes());
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	    }
	    else{
	    	Person person=new Person();
	    	person.setAccount(account);
	    	person.setPassword(password);
	    	person.setCreateDate(new Date());
	    	ps.create(person);
	    	try {
				this.response.getOutputStream().write("YES".getBytes());
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	    	}
   }

    

//   this.response.getWriter().write(json.toString());

@Override
public void setServletResponse(HttpServletResponse response) {
	// TODO Auto-generated method stub
	this.response=response;
}

@Override
public void setServletRequest(HttpServletRequest request) {
	// TODO Auto-generated method stub
	this.request = request;
}



public String getAccount() {
	return account;
}

public void setAccount(String account) {
	this.account = account;
}

public String getPassword() {
	return password;
}

public void setPassword(String password) {
	this.password = password;
}
}