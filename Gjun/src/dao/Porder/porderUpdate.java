package dao.Porder;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;

import dao.impl;
import model.porder;

public class porderUpdate extends porderDAO{
	
	public void updateObject(int id, Object o) {
		Session se = impl.getSession();
		Transaction tx = se.beginTransaction();
		List<Object> l = new porderDAO().queryHql("from porder where id="+id);
		porder[] p2 = l.toArray(new porder[0]);
		porder p = (porder) o;
		
		p2[0].setPro1(p.getPro1());
		p2[0].setPro2(p.getPro2());
		p2[0].setPro3(p.getPro3());
		p2[0].getSum();
		
		se.update(p2[0]);
		tx.commit();
		se.close();
	}
}
