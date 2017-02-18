package Service;

import java.util.List;

import org.hibernate.Session;

import hibernate.BaseDAO;
import hibernate.HibernateSessionFactory;
import entity.Course;
import entity.Person;

public class PersonService {
	
	private BaseDAO <Person> basedao = new BaseDAO<Person>();
	
	@SuppressWarnings("unchecked")
	public Person findPersonByAccount (String account) {
		Session session=HibernateSessionFactory.getSessionFactory().openSession();
		session.beginTransaction();
		List <Person> persons=session.createQuery(
				"select p from Person p"+
		        " where p.account=:account").
		        setParameter("account", account.trim()).list();
		session.getTransaction().commit();
		session.close();
		if (persons.size()>0)
			return persons.get(0);
		return null;
	}
	
	@SuppressWarnings("unchecked")
	public Person getPerson (String account,String password) {
		Session session=HibernateSessionFactory.getSessionFactory().openSession();
		session.beginTransaction();
		List <Person> persons=session.createQuery(
				"select p from Person p"
						+" where p.account=:account "
						+" and p.password=:password ").
		        setParameter("account", account).setParameter("password", password).list();
		session.getTransaction().commit();
		session.close();
		
		if(persons.size()>0)
			return persons.get(0);
		return null;
	}
	
	public void create (Person p) {
		if (findPersonByAccount(p.getAccount())!=null)
			throw new RuntimeException("Account "+p.getAccount()+" has already existed");
		basedao.create(p);
		
	}
	
	
	public void edit (Person p) {
		if (findPersonByAccount(p.getAccount())==null)
			throw new RuntimeException("Account "+p.getAccount()+" doesn't exist");
		basedao.update(p);
		
	}
	

}
