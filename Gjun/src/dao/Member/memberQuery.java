package dao.Member;

import model.member;

public class memberQuery extends memberDAO{
	
	public member queryId(int id) {
		member[] m = super.queryHql("from member where id="+id).toArray(new member[0]);
		
		return m[0];
	}
}
