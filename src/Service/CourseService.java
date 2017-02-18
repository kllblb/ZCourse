package Service;

import java.util.List;
import java.util.Set;

import org.hibernate.Session;

import hibernate.BaseDAO;
import hibernate.HibernateSessionFactory;
import entity.Course;
import entity.Person;


public class CourseService {
	
	private BaseDAO <Person> persondao = new BaseDAO<Person>();
	private BaseDAO <Course> coursedao = new BaseDAO<Course>();
	
	public void addCourse(Person p,Course c){
		Session session =HibernateSessionFactory.getSessionFactory().openSession();
		session.beginTransaction();
		p.getCourses().add(c);
		session.update(p);
		session.persist(c);
		session.getTransaction().commit();
		session.close();
	}
	
	public void editCourse(Person p,Course c,int id){
		Course ctemp=coursedao.find(Course.class, id);
		ctemp=c;
		Session session =HibernateSessionFactory.getSessionFactory().openSession();
		session.beginTransaction();
		session.update(p);
		session.update(ctemp);
		session.getTransaction().commit();
		session.close();
	}
	
	public Course findCourse(int id) {
		return coursedao.find(Course.class, id);
	}
	
	public void deleteCourse(Person p,Course c,int id){
		Course ctemp=coursedao.find(Course.class, id);
		ctemp=c;
		Session session =HibernateSessionFactory.getSessionFactory().openSession();
		session.beginTransaction();
		session.update(p);
		session.delete(ctemp);
		session.getTransaction().commit();
		session.close();
	}
	
	public int [][] findRowspan(Set<Course> courses){
		int a[][]=new int[20][20];
		for (Course c:courses){
			if(c.getCourse_amount()>1)
				for(int i=1;i<c.getCourse_amount();i++){
					a[i+c.getCourse_index()][c.getWeek_index()]=1;
			        }
		}
		return a;
	}

}
