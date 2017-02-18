package struts.jsp;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.InputStream;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;

public class DownloadAction extends ActionSupport{
	
	private String filename;

	
	public InputStream getDownloading(){
		String path=ServletActionContext.getServletContext().getInitParameter("fileSavedPath");
		//System.out.println("----------------"+filename+"------------------");
	    InputStream inputStream;
		try {
			inputStream = new FileInputStream(path+"/"+filename);
			return inputStream;
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}


	public String getFilename() {
		return filename;
	}


	public void setFilename(String filename) {
		this.filename = filename;
	}
}
