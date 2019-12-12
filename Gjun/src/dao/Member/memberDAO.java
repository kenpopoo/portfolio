package dao.Member;


import java.util.List;

import org.hibernate.Query;
import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.Transaction;


import dao.impl;
import javassist.expr.NewArray;
import model.member;

public class memberDAO implements impl{

	public static void main(String[] args) {
		
		//Session se = impl.getSession();
		//Transaction tx = se.beginTransaction();
		//System.out.println(se);
		
		
		
	}
	
	@Override
	public void add(Object o) {
		Session se = impl.getSession();
		Transaction tx = se.beginTransaction();
		
		member m = (member) o;
		se.save(m);
		tx.commit();
		se.close();
	}
	
	public boolean checkUser(String user) {
		Session se = impl.getSession();
		Transaction tx = se.beginTransaction();
		
		Query q = se.createQuery("from member where user='"+user+"'");
		List<member> l = q.list();
		
		if (l.isEmpty())
			return true;
		else
			return false;

	}

	@Override
	public void deleteObject(int id) {
		Session se = impl.getSession();
		Transaction tx = se.beginTransaction();
		
		List<Object> l = new memberDAO().queryHql("from member where id="+id);
		member[] m2 = l.toArray(new member[0]);
		
		se.delete(m2[0]);
		tx.commit();
		se.close();
	}

	@Override
	public void updateObject(int id, Object o) {
		Session se = impl.getSession();
		Transaction tx = se.beginTransaction();
		
		List<Object> l = new memberDAO().queryHql("from member where id="+id);
		member[] m2 = l.toArray(new member[0]);
		member m = (member) o;
		
		m2[0].setName(m.getName());
		m2[0].setPassword(m.getPassword());
		m2[0].setAddress(m.getAddress());
		m2[0].setMobile(m.getMobile());
		m2[0].setPhone(m.getPhone());
		
		se.update(m2[0]);
		tx.commit();
		se.close();
		
	}
	
	public member loginCheck(String user, String password) {
		Session se = impl.getSession();
		Transaction tx = se.beginTransaction();
		
		Query q = se.createQuery
				("from member as m where m.user='"+user+"' and m.password='"+password+"'");
		
		tx.commit();
		List<member> l = q.list();
		member m = (member)q.uniqueResult();
		se.close();
		if(m == null)
			return null;
		else
			return m;
		
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
		List<Object> l = q.list();
		
		return l;
	}

}
