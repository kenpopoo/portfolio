package controller;

import java.util.Map;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import dao.Porder.porderDAO;
import model.Sp;
import model.member;
import model.porder;

public class finishAction extends ActionSupport{
	private int pro1;
	private int pro2;
	private int pro3;
	
	public String execute() throws Exception{
		ApplicationContext ac = new ClassPathXmlApplicationContext("sp1.xml");
		Sp sp = (Sp)ac.getBean("sp1");
		
		Map<String, Object> session = ActionContext.getContext().getSession();
		porder p = (porder) session.get("P");
		
		if (p.getSum() != 0) {
			sp.getPorderDAO().add(p);
			
			return "yes";
		}
		else {
			return "no";
		}
		
		
	}
	
	public int getPro1() {
		return pro1;
	}
	public void setPro1(int pro1) {
		this.pro1 = pro1;
	}
	public int getPro2() {
		return pro2;
	}
	public void setPro2(int pro2) {
		this.pro2 = pro2;
	}
	public int getPro3() {
		return pro3;
	}
	public void setPro3(int pro3) {
		this.pro3 = pro3;
	}
	
	

}
