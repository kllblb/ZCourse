package entity;

import java.util.Date;
import java.util.HashSet;
import java.util.Set;

public class Datas {
	
	private Integer id;
	private String name;
	private Date createDate;
	private Person uploader;
	//private Set<Label> labels=new HashSet<Label>();;
	private float score;
	
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
	public Date getCreateDate() {
		return createDate;
	}
	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}
	
	public float getScore() {
		return score;
	}
	public void setScore(float score) {
		this.score = score;
	}
	public Person getUploader() {
		return uploader;
	}
	public void setUploader(Person uploader) {
		this.uploader = uploader;
	}
	
	
	

}
