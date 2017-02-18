package struts.api;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;

import Service.PersonService;

import com.opensymphony.xwork2.ActionSupport;

import entity.Person;

public class APIAction extends ActionSupport{
	
	private String account;
	private String password;

	public void regerify() throws Exception{
		//System.out.println("========account here========="+account+"====================");
		HttpServletResponse response = ServletActionContext.getResponse();
		PersonService ps=new PersonService();
		Person person=ps.findPersonByAccount(account);
		PrintWriter out=response.getWriter();
		if(account.equals("")){
			out.print("em");
			System.out.println("========em here========="+account+"====================");
		}
		else{
		if(person==null){
			out.print("ok");
		}
		else{
			out.print("no");
			//System.out.print("------------no--------------");
			}
		}
		
		
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
