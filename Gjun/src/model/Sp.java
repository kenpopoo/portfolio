package model;

import dao.Member.memberDAO;
import dao.Porder.porderDAO;

public class Sp {
	private member member;
	private porder porder;
	private memberDAO memberDAO;
	private porderDAO porderDAO;
	
	
	public member getMember() {
		return member;
	}
	public void setMember(member member) {
		this.member = member;
	}
	public porder getPorder() {
		return porder;
	}
	public void setPorder(porder porder) {
		this.porder = porder;
	}
	public memberDAO getMemberDAO() {
		return memberDAO;
	}
	public void setMemberDAO(memberDAO memberDAO) {
		this.memberDAO = memberDAO;
	}
	public porderDAO getPorderDAO() {
		return porderDAO;
	}
	public void setPorderDAO(porderDAO porderDAO) {
		this.porderDAO = porderDAO;
	}
	
	

}
