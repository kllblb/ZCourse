package hibernate;

import java.io.Serializable;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;

public class BaseDAO <T>{
	public void create(T object){
		Session session=HibernateSessionFactory.getSessionFactory().openSession();
		try{
			session.beginTransaction();
			session.persist(object);
			session.getTransaction().commit();
		} catch (Exception e) {
			session.getTransaction().rollback();
		} finally {
			session.close();
		}
	}
	
	public void update(T object){
		Session session=HibernateSessionFactory.getSessionFactory().openSession();
		try{
			session.beginTransaction();
			session.update(object);
			session.getTransaction().commit();
		} catch (Exception e) {
			session.getTransaction().rollback();
		} finally {
			session.close();
		}
	}
	
	public void delete(T object){
		Session session=HibernateSessionFactory.getSessionFactory().openSession();
		try{
			session.beginTransaction();
			session.delete(object);
			session.getTransaction().commit();
		} catch (Exception e) {
			session.getTransaction().rollback();
		} finally {
			session.close();
		}
	}
	
	/*public Query createQuery(String hql) {
		Session session=HibernateSessionFactory.getSessionFactory().openSession();
		try{
			session.beginTransaction();
			return session.createQuery(hql);	
		} catch (Exception e) {
			session.getTransaction().rollback();
		} finally {
			
		}
		return null;
	}*/
	
	@SuppressWarnings("unchecked")
	public T find (Class <? extends T> clazz, Serializable id) {
		Session session = HibernateSessionFactory.getSessionFactory().openSession();
		try{
			session.beginTransaction();
			return (T) session.get(clazz, id);
		} finally {
			session.getTransaction().commit();
			session.close();
		}
	}
	
	@SuppressWarnings("unchecked")
	public List<T> list(String hql) {
		Session session = HibernateSessionFactory.getSessionFactory().openSession();
		try {
			session.beginTransaction();
			return session.createQuery(hql).list();
		} finally {
			session.getTransaction().commit();
			session.close();
		}
	}

}
