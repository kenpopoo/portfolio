package dao.Porder;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import dao.impl;
import dao.Member.memberDAO;
import model.Sp;
import model.porder;

public class porderDAO implements impl{
	
	public static void main(String[] args) {
		/*ApplicationContext ac = new ClassPathXmlApplicationContext("sp1.xml");
		Sp sp = (Sp) ac.getBean("sp1");
		porder[] p = sp.getPorderDAO().queryHql("from porder where name='ken'").toArray(new porder[0]);
		for (int i = 0; i < p.length; i++) {
			p[i].setName("wayne"); 
			sp.getPorderDAO().update(p[i]);
		}*/
	}
	
	

	@Override
	public void add(Object o) {
		Session se = impl.getSession();
		Transaction tx = se.beginTransaction();
		
		porder p = (porder) o;
		
		se.save(p);
		tx.commit();
		se.close();
		
	}

	@Override
	public void deleteObject(int id) {
		Session se = impl.getSession();
		Transaction tx = se.beginTransaction();
		List<Object> l = new porderDAO().queryHql("from porder where id="+id);
		porder[] p2 = l.toArray(new porder[0]);
		
		se.delete(p2[0]);
		tx.commit();
		se.close();
		
	}

	@Override
	public void updateObject(int id, Object o) {
		Session se = impl.getSession();
		Transaction tx = se.beginTransaction();
		List<Object> l = new porderDAO().queryHql("from porder where id="+id);
		porder[] p2 = l.toArray(new porder[0]);
		porder p = (porder) o;
		
		p2[0].setName(p.getName());
		p2[0].setPro1(p.getPro1());
		p2[0].setPro2(p.getPro2());
		p2[0].setPro3(p.getPro3());
		p2[0].getSum();
		
		se.update(p2[0]);
		tx.commit();
		se.close();
		
	}
	
	public void update(Object o) {
		Session se = impl.getSession();
		Transaction tx = se.beginTransaction();
		porder p = (porder) o;
		
		se.update(p);
		tx.commit();
		se.close();
	}

	@Override
	public List<Object> queryHql(String Hql) {
		Query q = impl.getSession().createQuery(Hql);
		List<Object> l = q.list();
		
		return l;
	}

	@Override
	public List<Object> querySql(String Sql) {
		SQLQuery q = impl.getSession().createSQLQuery(Sql);
		q.addEntity("p", porder.class);
		List<Object> l = q.list();
		
		return l;
	}

}
