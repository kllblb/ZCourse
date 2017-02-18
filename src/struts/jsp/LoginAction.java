package struts.jsp;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.sf.json.JSONObject;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.SessionAware;

import entity.Course;
import entity.Person;
import Service.PersonService;

import com.opensymphony.xwork2.ActionSupport;

public class LoginAction extends ActionSupport implements SessionAware{
	
	private String account;
	private String password;
	
	private String result;
	
	private Map<String,Object> session;
	
	public void login(){
		HttpServletRequest request=ServletActionContext.getRequest();
		HttpServletResponse response = ServletActionContext.getResponse();
		//System.out.println("===================="+account+"=======================");
		PersonService ps=new PersonService();
		Person person=ps.getPerson(account, password);
		if(person!=null){
			session.put("person", person);
			try {
				response.getWriter().print("/Course/mainpage.jsp");
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			/*Map<String,Object> res = new HashMap<String,Object>();
			res.put("status", "200");
			res.put("href", "/Course/mainpage.jsp");
			res.put("msg", "Log in Succeeded!");
			JSONObject json = JSONObject.fromObject(res);
			result =json.toString();*/
		}
		else{
			try {
				response.getWriter().print("no");
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			/*Map<String,Object> res = new HashMap<String,Object>();
			res.put("ststus", "300");
			JSONObject json = JSONObject.fromObject(res);
			result =json.toString();*/
		}
		
		
	}
	
	public String logout(){
		session.clear();
		return "login";
	}
	
	public String safety(){
		return "safety";
	}
	
	public String tosign(){
		PersonService ps=new PersonService();
		Person person=new Person();
		person.setAccount(account);
		person.setPassword(password);
		person.setCreateDate(new Date());
		try{
		   ps.create(person);
		}catch(Exception e){
			return "input";
		}finally{
			
		}
		session.put("person", person);
		return "signsucceeded";
	}
	
	public String signin(){
		return "signin";
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

	@SuppressWarnings("unchecked")
	@Override
	public void setSession(Map session) {
		// TODO Auto-generated method stub
		this.session=session;
	}

	public String getResult() {
		return result;
	}

	public void setResult(String result) {
		this.result = result;
	}

}
