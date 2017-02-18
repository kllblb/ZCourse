package struts.android;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashSet;
import java.util.Set;

import org.apache.struts2.ServletActionContext;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;
import net.sf.json.JsonConfig;
import Service.CourseService;
import Service.PersonService;

import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import com.opensymphony.xwork2.ActionSupport;

import entity.Person;
import entity.Course;

public class CourseAction extends ActionSupport {
	private String account;
	private String password;
	private String jsonCourse;
	
	public void downLoadCourse(){
		PersonService ps=new PersonService();
		Person p=ps.getPerson(account, password);
		JsonConfig config=new JsonConfig();
		config.setExcludes(new String[]{"owner"});
		String json=JSONArray.fromObject(p.getCourses(), config).toString();
		//JSONObject jo=new JSONObject();
		//String jos=jo.put("courses", p.getCourses()).toString();
		try {
			ServletActionContext.getResponse().setCharacterEncoding("UTF-8");
			PrintWriter out = ServletActionContext.getResponse().getWriter();
			out.println(json);
			out.flush();  
	        out.close();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public void upLoadCourse(){
		Set <Course> courses=new HashSet<Course>();
		 try {
	            Gson gson = new Gson();
	            courses = gson.fromJson(jsonCourse, new TypeToken<Set<Course>>() {}.getType());
	        } catch (Exception e) {
	            // TODO: handle exception
	        }
		 if(courses!=null){
			 PersonService ps=new PersonService();
			 //CourseService cs=new CourseService();
			 Person p=(Person) ps.findPersonByAccount(account);
			 p.setCourses(courses);
			 ps.edit(p);
			 try {
				//ServletActionContext.getResponse().setCharacterEncoding("UTF-8");
				PrintWriter out=ServletActionContext.getResponse().getWriter();
				out.println("Yes");
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		 }
		 else
			 try {
					PrintWriter out=ServletActionContext.getResponse().getWriter();
					out.println("No");
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
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

	public String getJsonCourse() {
		return jsonCourse;
	}

	public void setJsonCourse(String jsonCourse) {
		this.jsonCourse = jsonCourse;
	}

}
