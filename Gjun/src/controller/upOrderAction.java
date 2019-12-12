package controller;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.opensymphony.xwork2.ActionSupport;

import dao.Porder.porderUpdate;
import model.Sp;

public class upOrderAction extends ActionSupport{
	private int orderId;
	private int pro1;
	private int pro2;
	private int pro3;
	
	public String execute() throws Exception{
		ApplicationContext ac = new ClassPathXmlApplicationContext("sp1.xml");
		Sp sp = (Sp) ac.getBean("sp1");
		sp.getPorder().setPro1(pro1);
		sp.getPorder().setPro2(pro2);
		sp.getPorder().setPro3(pro3);
		new porderUpdate().updateObject(orderId, sp.getPorder());
		
		return SUCCESS;
	}
	
	public int getOrderId() {
		return orderId;
	}
	public void setOrderId(int orderId) {
		this.orderId = orderId;
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
