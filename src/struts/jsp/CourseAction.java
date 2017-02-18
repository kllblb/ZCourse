package struts.jsp;

import java.util.Date;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

import Service.CourseService;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;
import net.sf.json.JsonConfig;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.SessionAware;

import entity.Course;
import entity.Person;

import com.opensymphony.xwork2.ActionSupport;

public class CourseAction extends ActionSupport implements SessionAware{
	
	private Map<String,Object> session;
	private Course c;
	private Person p;
	private Integer courseid;
	private String name;
	private int start;
	private int end;
	private int course_index;
	private int week_index;
	private int course_amount;
	
	public Course getC() {
		return c;
	}
	public void setC(Course c) {
		this.c = c;
	}
	public Person getP() {
		return p;
	}
	public void setP(Person p) {
		this.p = p;
	}
	
	public String my(){
		/*p=(Person) ServletActionContext.getRequest().getSession().getAttribute("person");
		JsonConfig config=new JsonConfig();
		config.setExcludes(new String[]{"owner"});
		String json=JSONArray.fromObject(p.getCourses(), config).toString();
		System.out.println("================here's JSON==================");
		System.out.println(json);*/
		return "my";
	}
	
	public String edit(){
		return "edit";
	}
	
	public String add(){
		return "add";
	}
	
	public String mainPage(){
		return "mainpage";
	}
	
	public String adding(){
		c=new Course();
		c.setName(name);
		c.setStart(start);
		c.setEnd(end);
		c.setCourse_index(course_index);
		c.setWeek_index(week_index);
		c.setCourse_amount(course_amount);
		c.setCreateDate(new Date());
		p=(Person)session.get("person");
		CourseService cs=new CourseService();
		cs.addCourse(p, c);
		return "addsucceeded";
	}
	
	public String editing(){
		CourseService cs=new CourseService();
		c=cs.findCourse(courseid);
		p=(Person)session.get("person");	
    	c.setName(name);
		c.setStart(start);
		c.setEnd(end);
		c.setCourse_index(course_index);
		c.setWeek_index(week_index);
		c.setCourse_amount(course_amount);
		cs.editCourse(p, c, courseid);
		for(Course temp:p.getCourses()){
			if(temp.getId().equals(courseid)){
				System.out.println(temp.getWeek_index());
				System.out.println(c.getWeek_index());
				temp.setName(name);
				temp.setName(name);
				temp.setStart(start);
				temp.setEnd(end);
				temp.setCourse_index(course_index);
				temp.setWeek_index(week_index);
				temp.setCourse_amount(course_amount);
			}
		}
		return "addsucceeded";
	}
	
	public String deleting(){
		CourseService cs=new CourseService();
		c=cs.findCourse(courseid);
		p=(Person)session.get("person");
		cs.deleteCourse(p, c, courseid);
		Set<Course> temp = new HashSet<Course>();
		for(Course ct:p.getCourses())
			if(ct.getId()==c.getId()){
				temp.add(ct);
		}
		p.getCourses().removeAll(temp);
		/*for(Course temp:p.getCourses()){
			if(temp.getId().equals(courseid)){
				p.getCourses().remove(temp);
				
			}
		}*/
		return "deleted";
	}
	
	
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getStart() {
		return start;
	}
	public void setStart(int start) {
		this.start = start;
	}
	public int getEnd() {
		return end;
	}
	public void setEnd(int end) {
		this.end = end;
	}
	public int getCourse_index() {
		return course_index;
	}
	public void setCourse_index(int course_index) {
		this.course_index = course_index;
	}
	public int getWeek_index() {
		return week_index;
	}
	public void setWeek_index(int week_index) {
		this.week_index = week_index;
	}
	public int getCourse_amount() {
		return course_amount;
	}
	public void setCourse_amount(int course_amount) {
		this.course_amount = course_amount;
	}
	
	@SuppressWarnings("unchecked")
	@Override
	public void setSession(Map session) {
		// TODO Auto-generated method stub
		this.session=session;
	}
	public Integer getCourseid() {
		return courseid;
	}
	public void setCourseid(Integer courseid) {
		this.courseid = courseid;
	}
	

}
