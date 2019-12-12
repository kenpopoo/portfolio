package dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public interface impl {
	static Session getSession() {
		Configuration conn = new Configuration().configure();
		SessionFactory sf = conn.buildSessionFactory();
		Session se = sf.openSession();
		
		return se;
	}
	
	
	void add(Object o);
	List<Object> queryHql(String Hql); 
	List<Object> querySql(String Sql); 
	void deleteObject(int id);
	void updateObject(int id, Object o);

}
