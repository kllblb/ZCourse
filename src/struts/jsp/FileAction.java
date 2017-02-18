package struts.jsp;

import java.util.Date;
import entity.Datas;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;

import org.apache.struts2.ServletActionContext;

import Service.CourseService;

import org.apache.struts2.interceptor.SessionAware;

import entity.Course;
import entity.Person;

import com.opensymphony.xwork2.ActionSupport;

public class FileAction extends ActionSupport implements SessionAware {
	
	private String filename;
	private File file;
	private String fileFileName;
	private Datas up;
	
	private Map<String,Object> session;
	
	public String execute(){
		return "input";
	}
	
	public String filearea(){
		return "filearea";
	}
	
	public String todownload(){
		//System.out.println("----------"+filename+"-----------");
		return "todownload";
	}
	
	public String toupload(){
		//System.out.println("----------"+filename+"-----------");
		return "toupload";
	}
	
	public String upload() throws Exception{
		String path=ServletActionContext.getServletContext().getInitParameter("fileSavedPath");
		//System.out.println("=============="+fileFileName+"============");
		File saved = new File(path,fileFileName);
		
		if(file==null)
			System.out.println("==============null!!============");
		
		InputStream ins=null;
		OutputStream ous=null;
		
		try{
			//saved.getParentFile().mkdirs();
			
			ins = new FileInputStream(file);
			ous=new FileOutputStream(saved);
			
			byte[] b=new byte[1024];
			int len=0;
			while ((len=ins.read(b))!=-1){
				ous.write(b,0,len);
			}
			up.setName(fileFileName);
			up.setUploader((Person)session.get("person"));
			up.setCreateDate(new Date());
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			if(ous!=null) ous.close();
			if(ins!=null) ins.close();
		}
		return "list";
	}
	

	@Override
	public void setSession(Map session) {
		// TODO Auto-generated method stub
		this.session=session;
	}


	public File getFile() {
		return file;
	}

	public void setFile(File file) {
		this.file = file;
	}

	public String getFileFileName() {
		return fileFileName;
	}

	public void setFileFileName(String fileFileName) {
		this.fileFileName = fileFileName;
	}

	public String getFilename() {
		return filename;
	}

	public void setFilename(String filename) {
		this.filename = filename;
	}

	public Datas getUp() {
		return up;
	}

	public void setUp(Datas up) {
		this.up = up;
	}



}
