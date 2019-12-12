package controller;

import java.util.Map;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import dao.Member.memberQuery;
import model.Sp;
import model.member;
import model.porder;

public class updateAction extends ActionSupport {
	private String name;
	private String password;
	private String address;
	private String mobile;
	private String phone;

	public String execute() throws Exception {
		ApplicationContext ac = new ClassPathXmlApplicationContext("sp1.xml");
		Sp sp = (Sp) ac.getBean("sp1");
		Map session = ActionContext.getContext().getSession();
		member m = (member) session.get("M");
		sp.getMember().setName(name);
		sp.getMember().setPassword(password);
		sp.getMember().setAddress(address);
		sp.getMember().setMobile(mobile);
		sp.getMember().setPhone(phone);
		sp.getMemberDAO().updateObject(m.getId(), sp.getMember());
		session.replace("M", new memberQuery().queryId(m.getId()));
		
		try {
			porder[] p = sp.getPorderDAO()
						.queryHql("from porder where name='"+m.getName()+"'")
						.toArray(new porder[0]);
			for (int i = 0; i < p.length; i++) {
				p[i].setName(name);
				sp.getPorderDAO().update(p[i]);
			}
			
			
		} catch (ArrayIndexOutOfBoundsException e) {
			
		}
		
		
		return SUCCESS;

	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getMobile() {
		return mobile;
	}

	public void setMobile(String mobile) {
		this.mobile = mobile;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

}
