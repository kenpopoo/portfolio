package controller;

import java.util.Map;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import dao.Member.memberDAO;
import model.Sp;
import model.member;

public class loginAction extends ActionSupport {
	private String user;
	private String password;

	public String execute() throws Exception {
		ApplicationContext ac = new ClassPathXmlApplicationContext("sp1.xml");
		Sp sp = (Sp) ac.getBean("sp1");


		Map<String, Object> session = ActionContext.getContext().getSession();

		member[] m = sp
					.getMemberDAO()
					.queryHql("from member where user='"+getUser()+"'and password='"+getPassword()+"'")
					.toArray(new member[0]);
		
		try {
			session.put("M", m[0]);
			
			return SUCCESS;
		} catch (ArrayIndexOutOfBoundsException e) {
			return ERROR;
		}

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

}
