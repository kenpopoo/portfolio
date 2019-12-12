package controller;

import java.util.Map;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import dao.Member.memberDAO;
import model.Sp;
import model.member;

public class addAction extends ActionSupport{
	private String name;
	private String user;
	private String password;
	private String address;
	private String mobile;
	private String phone;
	
	public String execute() {
		ApplicationContext ac = new ClassPathXmlApplicationContext("sp1.xml");
		Sp sp = (Sp)ac.getBean("sp1");
		
		boolean b = new memberDAO().checkUser(user);
		if (b) {
			member m = sp.getMember();
			m.setName(name);
			m.setUser(user);
			m.setPassword(password);
			m.setAddress(address);
			m.setMobile(mobile);
			m.setPhone(phone);
			new memberDAO().add(m);
			Map session = ActionContext.getContext().getSession();
			session.put("M", m);
			
			return SUCCESS;
		}
		else {
			return ERROR;
		}
		
	}
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getUser() {
		return user;
	}
	public void setUser(String user) {
		this.user = user;
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
