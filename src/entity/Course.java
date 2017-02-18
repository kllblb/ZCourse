package entity;

import java.util.Date;


public class Course {
	

	private Integer id;
	private String name;
	private int start;
	private int end;
	private int course_index;
	private int week_index;
	private int course_amount;
	private Date createDate;
	private Integer pid;
	private Person owner;
	
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
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
	public Date getCreateDate() {
		return createDate;
	}
	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}
	public Integer getPid() {
		return pid;
	}
	public void setPid(Integer pid) {
		this.pid = pid;
	}
	public Person getOwner() {
		return owner;
	}
	public void setOwner(Person owner) {
		this.owner = owner;
	}
	public int getCourse_amount() {
		return course_amount;
	}
	public void setCourse_amount(int course_amount) {
		this.course_amount = course_amount;
	}




}
